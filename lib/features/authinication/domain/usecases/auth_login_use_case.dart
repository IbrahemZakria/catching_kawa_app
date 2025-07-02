import 'package:catching_kawa_app/core/helper/error/failures.dart';
import 'package:catching_kawa_app/core/helper/use_cases/param_uses_case.dart';
import 'package:catching_kawa_app/features/authinication/data/models/user_model.dart';
import 'package:catching_kawa_app/features/authinication/domain/repositories/login_repo/auth_repo.dart';
import 'package:dartz/dartz.dart';

class AuthLoginUseCase extends UsesCase<UserModel, int, String> {
  final AuthRepo authRepo;
  AuthLoginUseCase({required this.authRepo});
  @override
  Future<Either<Failures, UserModel>> call(int id, String pass) {
    return authRepo.authLogin(id: id, pass: pass);
  }
}
