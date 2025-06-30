part of 'password_visabilty_cubit.dart';

@immutable
abstract class PasswordVisabiltyState {}

class PasswordVisabiltyInitial extends PasswordVisabiltyState {}

class PasswordVisabileState extends PasswordVisabiltyState {}

class PasswordUnVisabileState extends PasswordVisabiltyState {}
