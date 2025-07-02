import 'package:catching_kawa_app/core/helper/services/shared_preferance.dart';
import 'package:catching_kawa_app/core/utils/colors.dart';
import 'package:catching_kawa_app/core/utils/contant.dart';
import 'package:catching_kawa_app/core/utils/cubits/localization/localization_cubit.dart';
import 'package:catching_kawa_app/core/utils/styels.dart';
import 'package:catching_kawa_app/features/authinication/presentation/views/forgot_password_view.dart';
import 'package:catching_kawa_app/features/authinication/presentation/views/login_view.dart';
import 'package:catching_kawa_app/features/authinication/presentation/views/new_password_view.dart';
import 'package:catching_kawa_app/features/authinication/presentation/views/o_t_p_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'generated/l10n.dart';

class CatchingKawaApp extends StatelessWidget {
  const CatchingKawaApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LocalizationCubit(),
      child: BlocBuilder<LocalizationCubit, LocalizationState>(
        builder: (context, state) {
          String langCode =
              SharedPreferance.getData<String>(Constants.key) ??
              'en'; // Default language code

          return MaterialApp(
            debugShowCheckedModeBanner: false,
            locale: Locale(langCode),
            localizationsDelegates: [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
            title: 'Flutter Demo',
            theme: ThemeData(
              appBarTheme: AppBarTheme(
                backgroundColor: AppColors.white,
                titleTextStyle: Styles.textStyle20,
                centerTitle: true,
                iconTheme: IconThemeData(color: AppColors.black),
              ),
              iconTheme: IconThemeData(color: AppColors.primary),
              scaffoldBackgroundColor: AppColors.white,
              fontFamily: 'cairo',

              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            ),
            routes: {
              LoginView.routeName: (context) => const LoginView(),
              OTPView.routeName: (context) => const OTPView(),
              ForgotPasswordView.routeName: (context) =>
                  const ForgotPasswordView(),
              NewPasswordView.routeName: (context) => const NewPasswordView(),
            },
            initialRoute: LoginView.routeName,
          );
        },
      ),
    );
  }
}
