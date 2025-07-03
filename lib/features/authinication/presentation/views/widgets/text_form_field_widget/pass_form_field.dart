import 'package:catching_kawa_app/core/widgts/custome_text_form_field.dart';
import 'package:catching_kawa_app/features/authinication/presentation/views_model/password_visabilty/password_visabilty_cubit.dart';
import 'package:catching_kawa_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PassFormField extends StatelessWidget {
  const PassFormField({super.key, this.passwordController, this.validator});
  final TextEditingController? passwordController;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PasswordVisabiltyCubit(),
      child: BlocBuilder<PasswordVisabiltyCubit, PasswordVisabiltyState>(
        builder: (context, state) {
          var passbloc = context.read<PasswordVisabiltyCubit>();

          return CustomeTextFormField.custometextformfield(
            controller: passwordController,
            validator: validator != null
                ? (value) {
                    return validator!(value);
                  }
                : (value) {
                    if (value == null || value.isEmpty) {
                      return S.of(context).required_password;
                    }
                    return null;
                  },
            textType: TextInputType.visiblePassword,
            suffixIcon: IconButton(
              onPressed: () {
                passbloc.passwordVisabilty();
              },
              icon: Icon(passbloc.passwordIcon),
            ),
            obscureText: passbloc.visability,
            hintText: S.of(context).password,
            prefixIcon: IconButton(onPressed: () {}, icon: Icon(Icons.lock)),
          );
        },
      ),
    );
  }
}
