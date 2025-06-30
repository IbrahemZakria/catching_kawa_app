import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'password_visabilty_state.dart';

class PasswordVisabiltyCubit extends Cubit<PasswordVisabiltyState> {
  PasswordVisabiltyCubit() : super(PasswordVisabiltyInitial());
  IconData passwordIcon = Icons.visibility_off_outlined;
  bool visability = true;
  void passwordVisabilty() {
    if (visability == false) {
      visability = true;
      passwordIcon = Icons.visibility_off_outlined;
    } else {
      visability = false;
      passwordIcon = Icons.visibility_outlined;
    }
  }
}
