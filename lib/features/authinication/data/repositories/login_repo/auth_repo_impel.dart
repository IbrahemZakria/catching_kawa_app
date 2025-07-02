import 'package:catching_kawa_app/core/helper/error/failures.dart';
import 'package:catching_kawa_app/core/helper/error/server_error.dart';
import 'package:catching_kawa_app/features/authinication/data/datasources/remote_data_sources/auth_remote_data_source.dart';
import 'package:catching_kawa_app/features/authinication/data/models/user_model.dart';
import 'package:catching_kawa_app/features/authinication/domain/repositories/login_repo/auth_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class LoginRepoImpel implements AuthRepo {
  final AuthRemoteDataSource authRemoteDataSource;

  LoginRepoImpel({required this.authRemoteDataSource});

  @override
  Future<Either<Failures, UserModel>> authLogin({
    required int id,
    required String pass,
  }) async {
    try {
      UserModel userModel;
      userModel = await authRemoteDataSource.authLogin(id: id, pass: pass);
      return Right(userModel);
    } catch (error) {
      if (error is DioException) {
        return Left(ServerError.fromDioError(error));
      } else {
        return Left(ServerError(error.toString()));
      }
    }
  }

  @override
  Future<Either<Failures, UserModel>> resetPassword({
    required int id,
    required String pass,
  }) async {
    try {
      UserModel userModel;
      userModel = await authRemoteDataSource.resetPassword(id: id, pass: pass);
      return Right(userModel);
    } catch (error) {
      if (error is DioException) {
        return Left(ServerError.fromDioError(error));
      } else {
        return Left(ServerError(error.toString()));
      }
    }
  }

  @override
  Future<Either<Failures, UserModel>> otp({
    required int id,
    required int pinCode,
  }) async {
    try {
      UserModel userModel;
      userModel = await authRemoteDataSource.otp(id: id, pinCode: pinCode);
      return Right(userModel);
    } catch (error) {
      if (error is DioException) {
        return Left(ServerError.fromDioError(error));
      } else {
        return Left(ServerError(error.toString()));
      }
    }
  }
}
