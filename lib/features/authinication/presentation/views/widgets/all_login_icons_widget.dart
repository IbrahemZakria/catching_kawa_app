import 'package:catching_kawa_app/core/utils/cubits/localization/localization_cubit.dart';
import 'package:catching_kawa_app/features/authinication/presentation/views/widgets/login_icon_widget.dart';
import 'package:catching_kawa_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AllLoginIconsWidget extends StatelessWidget {
  const AllLoginIconsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        LoginIconsWidget(
          onTap: () {},
          icon: Icons.contact_support_outlined,
          text: S.of(context).contact_us,
        ),
        LoginIconsWidget(
          onTap: () {},
          icon: Icons.info,
          text: S.of(context).about_us,
        ),
        LoginIconsWidget(
          onTap: () {
            BlocProvider.of<LocalizationCubit>(context).changeLanguage();
          },
          icon: Icons.language,
          text: S.of(context).lang,
        ),
      ],
    );
  }
}
