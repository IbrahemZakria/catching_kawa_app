import 'package:catching_kawa_app/features/authinication/presentation/views/widgets/otpWidget/otp_body.dart';
import 'package:flutter/material.dart';

class OTPView extends StatelessWidget {
  const OTPView({super.key});
  static const String routeName = '/otpView';

  @override
  Widget build(BuildContext context) {
    return OtpBody();
  }
}
