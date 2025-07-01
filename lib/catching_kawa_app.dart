import 'package:catching_kawa_app/core/utils/colors.dart';
import 'package:catching_kawa_app/core/utils/cubits/localization/localization_cubit.dart';
import 'package:catching_kawa_app/features/authinication/presentation/views/login_view.dart';
import 'package:catching_kawa_app/features/authinication/presentation/views/regesrer_view.dart';
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
      create: (context) => LocalizationCubit()..changeLanguage(),
      child: BlocBuilder<LocalizationCubit, LocalizationState>(
        builder: (context, state) {
          String langCode = 'en'; // Default language code

          if (state is LanguageChangedState) {
            langCode = state.languageCode;
          }
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
              iconTheme: IconThemeData(color: AppColors.primary),
              scaffoldBackgroundColor: AppColors.white,
              fontFamily: 'cairo',

              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            ),
            routes: {
              LoginView.routeName: (context) => const LoginView(),
              RegesrerView.routeName: (context) => const RegesrerView(),
            },
            initialRoute: LoginView.routeName,
          );
        },
      ),
    );
  }
}
