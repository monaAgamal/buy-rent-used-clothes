import 'package:buy_rent_used_clothes/core/data/models/user_model.dart';

abstract class AuthLocalDataSource {
  Future<UserModel?> currentUser();

  Future<void> persistAuth({required UserModel userModel});

  Future<void> revokeAuth();
}
