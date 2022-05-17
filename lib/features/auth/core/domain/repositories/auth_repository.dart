import 'package:buy_rent_used_clothes/core/enums/auth_status.dart';
import 'package:buy_rent_used_clothes/core/failure/failure.dart';
import 'package:buy_rent_used_clothes/features/auth/login/domain/entities/logged_in_user_entity.dart';
import 'package:buy_rent_used_clothes/features/auth/login/domain/usecases/login_usecase.dart';
import 'package:buy_rent_used_clothes/features/auth/sign_up/domain/usecases/sign_up_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepository {
  Future<AuthStatus> isLoggedIn();
  Future<Either<Failure, bool>> sendAccountEmailActivation();
  Future<Either<Failure, bool>> signup({required SignUpParams params});
  Future<Either<Failure, LoggedInUserEntity>> login(
      {required LoginParam params});

  Either<Failure, Stream<User?>> checkAuthStatus();
}
