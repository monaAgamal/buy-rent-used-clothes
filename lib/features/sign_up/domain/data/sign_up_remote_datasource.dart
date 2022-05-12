import 'package:buy_rent_used_clothes/core/data/models/user_model.dart';

abstract class SignupRemoteDataSource {
  Future<UserModel?> signUp({
    required String email,
    required String password,
    required String name,
  });
}
