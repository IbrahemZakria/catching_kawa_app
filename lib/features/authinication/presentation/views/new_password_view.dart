import 'package:catching_kawa_app/features/authinication/presentation/views/widgets/otpWidget/new_password_body.dart';
import 'package:flutter/material.dart';

class NewPasswordView extends StatelessWidget {
  const NewPasswordView({super.key});
  static const String routeName = '/newPasswordView';

  @override
  Widget build(BuildContext context) {
    return NewPasswordBody();
  }
}
