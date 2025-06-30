import 'package:catching_kawa_app/core/error/failures.dart';
import 'package:catching_kawa_app/core/helper/services/api_servises.dart';
import 'package:catching_kawa_app/features/authinication/data/models/intery_logen_data.dart';
import 'package:catching_kawa_app/features/authinication/data/models/user_model.dart';
import 'package:catching_kawa_app/features/authinication/domain/repositories/regester_repo/regester_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class RegesterRepoImpl implements Regesterrepo {
  RegesterRepoImpl(this.interyLogenData);
  final InteryLogenData interyLogenData;

  @override
  Future<Either<Failures, UserModel>> postregester() async {
    try {
      final response = await ApiServises().postData(
        endpoint: "api/v1/users/",
        data: interyLogenData as Map<String, dynamic>,
      );
      UserModel useData = UserModel.fromJson(response);
      return Right(useData);
    } catch (error) {
      if (error is DioException) {
        return Left(ServerError.fromDioError(error));
      } else {
        return left(ServerError(error.toString()));
      }
    }
  }
}
