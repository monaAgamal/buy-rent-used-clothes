import 'package:buy_rent_used_clothes/core/domain/usecase.dart';
import 'package:buy_rent_used_clothes/core/failure/failure.dart';
import 'package:buy_rent_used_clothes/features/auth/core/domain/repositories/auth_repository.dart';
import 'package:buy_rent_used_clothes/features/auth/login/domain/entities/logged_in_user_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

@injectable
class LoginUseCase
    extends UseCase<Future<Either<Failure, LoggedInUserEntity>>, void> {
  final AuthRepository authRepository;

  LoginUseCase(this.authRepository);
  @override
  Future<Either<Failure, LoggedInUserEntity>> call(param) async {
    return authRepository.login(params: param);
  }
}

class LoginParam extends Equatable {
  final String email;
  final String password;

  const LoginParam({required this.email, required this.password});
  @override
  List<Object?> get props => [email, password];
}
