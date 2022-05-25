// import 'package:buy_rent_used_clothes/core/domain/usecase.dart';
// import 'package:buy_rent_used_clothes/core/failure/failure.dart';
// import 'package:buy_rent_used_clothes/features/auth/core/domain/repositories/auth_repository.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:injectable/injectable.dart';
// import 'package:dartz/dartz.dart';

// @injectable
// class AuthStatusChangesUseCase<Future<Either<Failure, Stream<User?>>, NoParams> extends UseCase {
//   final AuthRepository authRepository;

//   AuthStatusChangesUseCase(this.authRepository);
//   @override

//   Future<Either<Failure, Stream<User?>>> call(param) async {
//     return authRepository.checkAuthStatus();
//   }
// }

import 'package:buy_rent_used_clothes/core/domain/usecase.dart';
import 'package:buy_rent_used_clothes/core/failure/failure.dart';
import 'package:buy_rent_used_clothes/features/auth/core/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@injectable
class AuthStatusChangesUseCase
    extends UseCase<Future<Either<Failure, Stream<User?>>>, NoParams> {
  final AuthRepository authRepository;

  AuthStatusChangesUseCase(this.authRepository);
  @override
  Future<Either<Failure, Stream<User?>>> call(param) async {
    return authRepository.checkAuthStatus();
  }
}
