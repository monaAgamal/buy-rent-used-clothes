import 'dart:convert';
import 'package:buy_rent_used_clothes/core/contants/constants.dart';
import 'package:buy_rent_used_clothes/core/data/models/user_model.dart';
import 'package:buy_rent_used_clothes/features/auth/core/domain/datasources/auth_local_datasource.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@Singleton(as: AuthLocalDataSource)
class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  final SharedPreferences _sharedPreferences;

  AuthLocalDataSourceImpl(this._sharedPreferences);

  @override
  Future<UserModel?> currentUser() async {
    if (_sharedPreferences.containsKey(CURRENT_USER)) {
      if (_sharedPreferences.getString(CURRENT_USER)!.isNotEmpty) {
        final userJson =
            json.decode(_sharedPreferences.getString(CURRENT_USER)!);
        final UserModel model = UserModel.fromJson(userJson);
        return model;
      }
    }

    return null;
  }

  @override
  Future<void> persistAuth({required UserModel userModel}) async {
    final jsonUserModel = userModel.toJson();
    await _sharedPreferences.setString(
        CURRENT_USER, json.encode(jsonUserModel));
  }

  @override
  Future<void> revokeAuth() async {
    await _sharedPreferences.remove(CURRENT_USER);
  }
}
