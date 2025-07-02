import 'package:catching_kawa_app/core/utils/assets.dart';
import 'package:catching_kawa_app/core/utils/styels.dart';
import 'package:catching_kawa_app/core/widgts/custom_button.dart';
import 'package:catching_kawa_app/core/widgts/custome_text_form_field.dart';
import 'package:catching_kawa_app/features/authinication/presentation/views/o_t_p_view.dart';
import 'package:catching_kawa_app/features/authinication/presentation/views/widgets/text_widget.dart';
import 'package:catching_kawa_app/generated/l10n.dart';
import 'package:flutter/material.dart';

class ForgotPasswordBody extends StatelessWidget {
  ForgotPasswordBody({super.key});
  final TextEditingController idControler = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(S.of(context).forgot_password)),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Image.asset(AssetsData.forgotPassword, height: 120),
              const SizedBox(height: 24),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 37.0),
                child: Text(
                  S.of(context).message_to_enter_id,
                  style: Styles.textStyle14,
                  textAlign: TextAlign.center,
                ),
              ),

              const SizedBox(height: 48),
              TextWidget(text: S.of(context).enter_id),

              const SizedBox(height: 8),

              CustomeTextFormField.custometextformfield(
                controller: idControler,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return S.of(context).required_id;
                  } else if (value is int || value.toString().length != 14) {
                    return S.of(context).wrong_data;
                  } else {
                    return null;
                  }
                },
                prefixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.perm_identity),
                ),
                textType: TextInputType.phone,
                hintText: S.of(context).enter_id,
              ),
              SizedBox(height: 16),

              CustomButton(
                text: S.of(context).login,
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.pushNamed(context, OTPView.routeName);
                  }
                },
              ),
              SizedBox(width: double.infinity, height: 50),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
