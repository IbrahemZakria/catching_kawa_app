import 'package:catching_kawa_app/core/utils/assets.dart';
import 'package:catching_kawa_app/core/widgts/custom_button.dart';
import 'package:catching_kawa_app/core/widgts/custome_text_form_field.dart';
import 'package:catching_kawa_app/core/widgts/user_message.dart';
import 'package:catching_kawa_app/features/authinication/presentation/views/widgets/text_widget.dart';
import 'package:catching_kawa_app/features/authinication/presentation/views_model/password_visabilty/password_visabilty_cubit.dart';
import 'package:catching_kawa_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewPasswordBody extends StatelessWidget {
  NewPasswordBody({super.key});
  final TextEditingController confirmPasswordControler =
      TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context) => PasswordVisabiltyCubit(),
      child: Form(
        key: _formKey,
        child: Scaffold(
          appBar: AppBar(
            title: Text(S.of(context).new_password),
            centerTitle: true,
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: size.height * .05),
                  Image.asset(
                    AssetsData.forgotPassword,
                    height: size.height * .13,
                  ),
                  SizedBox(height: 16),
                  TextWidget(text: S.of(context).new_password),

                  SizedBox(height: 8),

                  BlocBuilder<PasswordVisabiltyCubit, PasswordVisabiltyState>(
                    builder: (context, state) {
                      var passbloc = BlocProvider.of<PasswordVisabiltyCubit>(
                        context,
                      );

                      return CustomeTextFormField.custometextformfield(
                        controller: passwordController,
                        validator: (value) {
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
                        prefixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.lock),
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 16),
                  TextWidget(text: S.of(context).confirm_new_password),

                  SizedBox(height: 8),

                  BlocBuilder<PasswordVisabiltyCubit, PasswordVisabiltyState>(
                    builder: (context, state) {
                      var passbloc = BlocProvider.of<PasswordVisabiltyCubit>(
                        context,
                      );

                      return CustomeTextFormField.custometextformfield(
                        controller: confirmPasswordControler,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return S.of(context).required_password;
                          } else if (value != passwordController.text) {
                            return S.of(context).password_mismatch;
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
                        prefixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.lock),
                        ),
                      );
                    },
                  ),

                  SizedBox(height: 14),

                  CustomButton(
                    text: S.of(context).confirm,
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        UserMessage.show(message: 'message');
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
