import 'package:catching_kawa_app/features/authinication/data/models/user_model.dart';

abstract class AuthRemoteDataSource {
  Future<UserModel> authLogin({required int id, required String pass});
  Future<UserModel> resetPassword({required int id, required String pass});
  Future<UserModel> otp({required int id, required int pinCode});
}
