import 'package:catching_kawa_app/core/utils/colors.dart';
import 'package:flutter/material.dart';

abstract class Styles {
  static const TextStyle textStyle18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: Colors.black, // kprimarycolor
  );
  static const TextStyle textStyle32 = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w600,
    color: Colors.black, // kprimarycolor
  );
  static const TextStyle textStyle20 = TextStyle(
    fontSize: 20,
    color: Colors.black, // kprimarycolor
  );
  static const TextStyle textStyle14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    color: AppColors.grey,
  );
  static const TextStyle textStyle14Dark = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    color: AppColors.darkgrey,
  );
  static const TextStyle textStyle16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: Colors.black, // kprimarycolor
  );
}
