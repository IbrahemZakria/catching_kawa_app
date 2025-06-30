import 'package:catching_kawa_app/core/utils/styels.dart';
import 'package:catching_kawa_app/core/widgts/custom_button.dart';
import 'package:catching_kawa_app/core/widgts/custome_text_form_field.dart';
import 'package:catching_kawa_app/core/widgts/user_message.dart';
import 'package:catching_kawa_app/features/authinication/presentation/views_model/password_visabilty/password_visabilty_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegesterViewBody extends StatelessWidget {
  RegesterViewBody({super.key});
  final TextEditingController emailControler = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController phoneControler = TextEditingController();
  final TextEditingController usernamControler = TextEditingController();

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
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: size.height * .2),
                  Text("Login", style: Styles.textStyle32),
                  SizedBox(height: 16),
                  Text("login now to our world", style: Styles.textStyle16),
                  SizedBox(height: 16),
                  CustomeTextFormField.custometextformfield(
                    controller: usernamControler,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter an email';
                      }
                      return null;
                    },
                    textType: TextInputType.emailAddress,
                    hintText: 'Name',
                    prefixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.person_3),
                    ),
                  ),
                  SizedBox(height: 16),

                  CustomeTextFormField.custometextformfield(
                    controller: emailControler,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter an email';
                      }
                      return null;
                    },
                    textType: TextInputType.emailAddress,
                    hintText: 'Email',
                    prefixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.email_outlined),
                    ),
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
                            return 'Please enter an email';
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
                        hintText: 'password',
                        prefixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.lock_outline_rounded),
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 16),
                  CustomeTextFormField.custometextformfield(
                    controller: phoneControler,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your phone';
                      }
                      return null;
                    },
                    textType: TextInputType.emailAddress,
                    hintText: 'phone',
                    prefixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.email_outlined),
                    ),
                  ),
                  SizedBox(height: size.height * .05),

                  CustomButton(
                    text: "Regester",
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        UserMessage.show(message: 'message');
                      }
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(" have an account ?", style: Styles.textStyle18),
                      TextButton(
                        onPressed: () {},
                        child: Text("login", style: TextStyle(fontSize: 18)),
                      ),
                    ],
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
