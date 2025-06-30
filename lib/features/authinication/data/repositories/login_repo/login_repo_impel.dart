import 'package:catching_kawa_app/core/error/failures.dart';
import 'package:catching_kawa_app/features/authinication/data/models/user_model.dart';
import 'package:catching_kawa_app/features/authinication/domain/repositories/login_repo/login_repo.dart';
import 'package:dartz/dartz.dart';

class LoginRepoImpel implements LoginRepo {
  @override
  Future<Either<Failures, UserModel>> postLogin() {
    // TODO: implement postLogin
    throw UnimplementedError();
  }
}
