import 'package:dartz/dartz.dart';
import 'package:catching_kawa_app/core/error/failures.dart';
import 'package:catching_kawa_app/features/authinication/data/models/user_model.dart';

abstract class Regesterrepo {
  Future<Either<Failures, UserModel>> postregester();
}
