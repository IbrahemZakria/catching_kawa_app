import 'package:catching_kawa_app/core/helper/services/api_servises.dart';
import 'package:catching_kawa_app/core/utils/contant.dart';
import 'package:catching_kawa_app/features/authinication/data/datasources/remote_data_sources/auth_remote_data_source.dart';
import 'package:catching_kawa_app/features/authinication/data/models/user_model.dart';

class AuthRemoteDataSourceImpel extends AuthRemoteDataSource {
  @override
  Future<UserModel> authLogin({required int id, required String pass}) async {
    UserModel userModel;
    userModel = await ApiServises().postData(
      endpoint: Constants.loginEndPoint,
      // ignore: equal_keys_in_map
      data: {Constants.idData: id, Constants.passData: pass},
    );
    return userModel;
  }

  @override
  Future<UserModel> otp({required int id, required int pinCode}) async {
    UserModel userModel;
    userModel = await ApiServises().postData(
      endpoint: Constants.loginEndPoint,
      // ignore: equal_keys_in_map
      data: {Constants.idData: id, Constants.passData: pinCode},
    );
    return userModel;
  }

  @override
  Future<UserModel> resetPassword({
    required int id,
    required String pass,
  }) async {
    UserModel userModel;
    userModel = await ApiServises().postData(
      endpoint: Constants.loginEndPoint,
      // ignore: equal_keys_in_map
      data: {Constants.idData: id, Constants.passData: pass},
    );
    return userModel;
  }
}
