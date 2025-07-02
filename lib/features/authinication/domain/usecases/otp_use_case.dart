import 'package:catching_kawa_app/core/helper/error/failures.dart';
import 'package:catching_kawa_app/core/helper/use_cases/param_uses_case.dart';
import 'package:catching_kawa_app/features/authinication/data/models/user_model.dart';
import 'package:catching_kawa_app/features/authinication/domain/repositories/login_repo/auth_repo.dart';
import 'package:dartz/dartz.dart';

class OtpUseCase extends UsesCase<UserModel, int, int> {
  final AuthRepo authRepo;
  OtpUseCase({required this.authRepo});
  @override
  Future<Either<Failures, UserModel>> call(int id, int pinode) {
    return authRepo.otp(id: id, pinCode: pinode);
  }
}
