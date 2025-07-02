import 'package:catching_kawa_app/features/authinication/presentation/views/widgets/login_widget/login_view_body.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static final String routeName = "LoginView";

  @override
  Widget build(BuildContext context) {
    return LoginViewBody();
  }
}
