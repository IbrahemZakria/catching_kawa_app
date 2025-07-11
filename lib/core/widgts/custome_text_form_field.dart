import 'package:catching_kawa_app/core/utils/colors.dart';
import 'package:catching_kawa_app/core/utils/styels.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomeTextFormField extends StatelessWidget {
  CustomeTextFormField.custometextformfield({
    super.key,
    this.obscureText = false,
    this.hintText,
    this.onSaved,
    this.prefixIcon,
    this.suffixIcon,
    this.validator,
    this.textColor = Colors.black,
    this.controller,
    this.borderRadius,
    this.maxLines,
    this.bordercolor = Colors.white,
    this.textType = TextInputType.emailAddress,
  });
  double? borderRadius;
  String? hintText;
  String? Function(String?)? validator;
  Function(String)? onSaved;
  bool obscureText;
  IconButton? prefixIcon;

  IconButton? suffixIcon;
  Color bordercolor;
  Color? textColor;
  TextEditingController? controller;
  int? maxLines;
  TextInputType? textType;
  OutlineInputBorder buildborder({Color bordercolor = AppColors.grey}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(borderRadius ?? 12),
      borderSide: BorderSide(color: bordercolor, width: 2),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: TextFormField(
        enableSuggestions: true,
        controller: controller,
        validator: (value) {
          return validator != null ? validator!(value) : null;
        },
        onChanged: onSaved,
        maxLines: maxLines ?? 1,
        style: TextStyle(color: textColor),
        obscureText: obscureText,
        keyboardType: textType,
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          hintText: hintText ?? '',
          hintStyle: Styles.textStyle14,
          enabledBorder: buildborder(),

          errorBorder: buildborder(bordercolor: AppColors.grey),
          focusedBorder: buildborder(bordercolor: AppColors.grey),
          focusedErrorBorder: buildborder(bordercolor: AppColors.grey),
        ),
      ),
    );
  }
}
