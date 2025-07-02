import 'package:catching_kawa_app/core/helper/error/failures.dart';
import 'package:catching_kawa_app/features/authinication/data/models/user_model.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepo {
  Future<Either<Failures, UserModel>> authLogin({
    required int id,
    required String pass,
  });
  Future<Either<Failures, UserModel>> resetPassword({
    required int id,
    required String pass,
  });
  Future<Either<Failures, UserModel>> otp({
    required int id,
    required int pinCode,
  });
}
