import 'package:catching_kawa_app/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpPinCodeField extends StatelessWidget {
  const OtpPinCodeField({super.key, this.validator, this.controller});
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 32.0,
      ), // مسافة من الجانبين
      child: PinCodeTextField(
        controller: controller,
        validator: (value) {
          return validator != null ? validator!(value) : null;
        },
        appContext: context,
        length: 4,
        keyboardType: TextInputType.number,
        onChanged: (value) {},
        autoFocus: true,
        animationType: AnimationType.fade,
        pinTheme: PinTheme(
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(12), // نفس اللي في الصورة
          fieldHeight: 60,
          fieldWidth: 60,
          activeColor: AppColors.primary,
          selectedColor: AppColors.primary,
          inactiveColor: AppColors.grey,
        ),
        animationDuration: const Duration(milliseconds: 300),
        enableActiveFill: false,
      ),
    );
  }
}
