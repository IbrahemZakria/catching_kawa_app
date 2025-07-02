part of 'login_cubit.dart';

abstract class LoginState {}

class LoginInitial extends LoginState {}

class LoginSuccessState extends LoginState {
  final UserModel userModel;
  LoginSuccessState({required this.userModel});
}

class LoginLoadingState extends LoginState {}

class LoginFailedState extends LoginState {
  final String errorMessage;

  LoginFailedState(this.errorMessage);
}
