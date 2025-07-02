part of 'resetpassword_cubit.dart';

abstract class ResetpasswordState {}

class ResetpasswordInitial extends ResetpasswordState {}

class ResetpasswordLoadingState extends ResetpasswordState {}

class ResetpasswordSuccessState extends ResetpasswordState {
  final UserModel userModel;

  ResetpasswordSuccessState({required this.userModel});
}

class ResetpasswordFailedState extends ResetpasswordState {
  final String errorMessage;

  ResetpasswordFailedState({required this.errorMessage});
}
