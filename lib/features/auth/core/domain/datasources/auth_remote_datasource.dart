import 'package:buy_rent_used_clothes/core/data/models/user_model.dart';

abstract class AuthRemoteDataSource {
  Future<UserModel> login({
    required String email,
    required String passWord,
  });
  Future<UserModel> register({
    required String email,
    required String passWord,
    required String phone,
    required String name ,
  });
  Future<UserModel> verify({
    required String email,
    required String otp,
  });

}
