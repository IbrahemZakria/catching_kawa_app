import 'package:catching_kawa_app/core/utils/styels.dart';
import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
    required this.text,
    this.style = Styles.textStyle16,
  });
  final String text;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Row(children: [Text(text, style: style)]);
  }
}
