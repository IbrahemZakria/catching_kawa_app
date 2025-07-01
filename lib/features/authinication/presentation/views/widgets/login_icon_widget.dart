import 'package:flutter/material.dart';

class LoginIconsWidget extends StatelessWidget {
  const LoginIconsWidget({
    super.key,
    required this.onTap,
    required this.icon,
    required this.text,
  });
  final void Function()? onTap;
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(children: [Icon(icon, size: 30), Text(text)]),
    );
  }
}
