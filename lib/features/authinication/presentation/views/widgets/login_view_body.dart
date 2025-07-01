import 'package:catching_kawa_app/core/utils/assets.dart';
import 'package:catching_kawa_app/core/utils/styels.dart';
import 'package:catching_kawa_app/core/widgts/custom_button.dart';
import 'package:catching_kawa_app/core/widgts/custome_text_form_field.dart';
import 'package:catching_kawa_app/core/widgts/user_message.dart';
import 'package:catching_kawa_app/features/authinication/presentation/views/widgets/all_login_icons_widget.dart';
import 'package:catching_kawa_app/features/authinication/presentation/views_model/password_visabilty/password_visabilty_cubit.dart';
import 'package:catching_kawa_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginViewBody extends StatelessWidget {
  LoginViewBody({super.key});
  final TextEditingController idControler = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context) => PasswordVisabiltyCubit(),
      child: SafeArea(
        child: Form(
          key: _formKey,
          child: Scaffold(
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: size.height * .1),
                    Image.asset(AssetsData.logo, height: size.height * .13),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        Text(
                          S.of(context).Personal_id,
                          style: Styles.textStyle16,
                        ),
                      ],
                    ),
                    SizedBox(height: 16),

                    CustomeTextFormField.custometextformfield(
                      controller: idControler,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return S.of(context).required_id;
                        }
                        return null;
                      },
                      prefixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.perm_identity),
                      ),
                      textType: TextInputType.phone,
                      hintText: S.of(context).enter_id,
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        Text(
                          S.of(context).required_password,
                          style: Styles.textStyle16,
                        ),
                      ],
                    ),
                    SizedBox(height: 16),

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
                    SizedBox(height: 32),

                    CustomButton(
                      text: S.of(context).login,
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          UserMessage.show(message: 'message');
                        }
                      },
                    ),
                    SizedBox(height: size.height * .05),

                    AllLoginIconsWidget(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
