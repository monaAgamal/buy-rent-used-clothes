import 'package:buy_rent_used_clothes/core/data/models/user_model.dart';
import 'package:buy_rent_used_clothes/core/enums/auth_status.dart';
import 'package:buy_rent_used_clothes/core/exception/application_exception.dart';
import 'package:buy_rent_used_clothes/core/failure/failure.dart';
import 'package:buy_rent_used_clothes/features/auth/core/domain/datasources/auth_local_datasource.dart';
import 'package:buy_rent_used_clothes/features/auth/core/domain/datasources/auth_remote_datasource.dart';
import 'package:buy_rent_used_clothes/features/auth/core/domain/repositories/auth_repository.dart';
import 'package:buy_rent_used_clothes/features/auth/sign_up/domain/usecases/sign_up_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: AuthRepository)
class AuthRemoteRepositoryImpl implements AuthRepository {
  final AuthLocalDataSource authLocalDataSource;
  final AuthRemoteDataSource authRemoteDataSource;

  AuthRemoteRepositoryImpl(
    this.authLocalDataSource,
    this.authRemoteDataSource,
  );

  @override
  Future<AuthStatus> isLoggedIn() async {
    final UserModel? currentUser = await authLocalDataSource.currentUser();
    if (currentUser != null) {
      return currentUser.isVerified
          ? AuthStatus.verified
          : AuthStatus.uthenticatedNotVerified;
    }
    return AuthStatus.unAuthenticated;
  }

  @override
  Future<Either<Failure, bool>> signup({required SignUpParams params}) async {
    try {
      final userModel = await authRemoteDataSource.register(
        email: params.email,
        passWord: params.password,
        phone: params.phone,
        name: params.name,
      );
      await authLocalDataSource.persistAuth(userModel: userModel);
      return Right(userModel != null ? true : false);
    } on ApplicationException catch (e) {
      return Left(firebaseExceptionToFailureDecoder(e));
    }
  }
}
