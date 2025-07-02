part of 'otp_cubit.dart';

abstract class OtpState {}

class OtpInitial extends OtpState {}

class OtploadingState extends OtpState {}

class OtpSucessState extends OtpState {
  final UserModel userModel;

  OtpSucessState({required this.userModel});
}

class OtpFailedState extends OtpState {
  final String errorMessage;

  OtpFailedState({required this.errorMessage});
}
