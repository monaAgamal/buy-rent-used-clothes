import 'package:buy_rent_used_clothes/core/data/models/user_model.dart';
import 'package:buy_rent_used_clothes/core/exception/application_exception.dart';
import 'package:buy_rent_used_clothes/features/auth/core/data/service/auth_service.dart';
import 'package:buy_rent_used_clothes/features/auth/core/domain/datasources/auth_remote_datasource.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: AuthRemoteDataSource)
class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final AuthService authService;

  AuthRemoteDataSourceImpl(this.authService);

  @override
  Future<UserModel>? login(
      {required String email, required String passWord}) async {
    try {
      final userModel =
          await authService.login(email: email, password: passWord);
      return userModel!;
    } on FirebaseAuthException catch (e) {
      firebaseAuthExceptionDecoder(firebaseAuthException: e);
       
    }
  }

  @override
  Future<UserModel> register(
      {required String email,
      required String passWord,
      required String phone,
      required String name}) async {
    try {
      final user = await authService.signUp(
          email: email, password: passWord, name: name);
      return user!;
    } on FirebaseAuthException catch (e) {
      firebaseAuthExceptionDecoder(firebaseAuthException: e);
    }
    throw GenericException("Some thing went wrong");
  }

  @override
  Future<UserModel> verify({required String email, required String otp}) {
    throw UnimplementedError();
  }

  @override
  Future<bool> sendVerificationEmail() async {
    try {
      await authService.sendVerificationEmail();
    } on FirebaseAuthException catch (e) {
      firebaseAuthExceptionDecoder(firebaseAuthException: e);
    }
    throw GenericException("Some thing went wrong");
  }

  @override
  Stream<User?> checkAuthStatus() {
    return authService.checkAuthStateChanges();
  }
}
