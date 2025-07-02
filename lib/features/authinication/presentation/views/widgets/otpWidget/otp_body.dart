import 'package:catching_kawa_app/core/utils/assets.dart';
import 'package:catching_kawa_app/core/utils/styels.dart';
import 'package:catching_kawa_app/core/widgts/custom_button.dart';
import 'package:catching_kawa_app/features/authinication/presentation/views/new_password_view.dart';
import 'package:catching_kawa_app/features/authinication/presentation/views/widgets/otpWidget/otp_pin_code_field.dart';
import 'package:catching_kawa_app/features/authinication/presentation/views/widgets/otpWidget/otp_timer.dart';
import 'package:catching_kawa_app/generated/l10n.dart';
import 'package:flutter/material.dart';

class OtpBody extends StatelessWidget {
  OtpBody({super.key});
  final TextEditingController idController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(S.of(context).otp)),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Image.asset(AssetsData.password, height: 120),
              const SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 37.0),
                child: Text(
                  S.of(context).change_password_message('1234567890'),
                  style: Styles.textStyle14,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 30),

              OtpPinCodeField(
                controller: idController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the code';
                  } else if (value.length < 4) {
                    return 'Code must be 4 digits';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 24),
              OtpTimer(),

              const SizedBox(height: 30),

              CustomButton(
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.pushNamed(context, NewPasswordView.routeName);
                  }
                },
                text: S.of(context).confirm,
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
