import 'package:buy_rent_used_clothes/core/data/models/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRemoteDataSource {
  Future<UserModel>? login({
    required String email,
    required String passWord,
  });
  Future<UserModel> register({
    required String email,
    required String passWord,
    required String phone,
    required String name,
  });

  Future<bool> sendVerificationEmail();

  Future<UserModel> verify({
    required String email,
    required String otp,
  });

  Stream<User?> checkAuthStatus();
}
