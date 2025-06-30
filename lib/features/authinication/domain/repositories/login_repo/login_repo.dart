import 'package:catching_kawa_app/core/error/failures.dart';
import 'package:catching_kawa_app/features/authinication/data/models/user_model.dart';
import 'package:dartz/dartz.dart';

abstract class LoginRepo {
  Future<Either<Failures, UserModel>> postLogin();
}
