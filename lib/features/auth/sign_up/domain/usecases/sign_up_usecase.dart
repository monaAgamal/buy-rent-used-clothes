import 'package:buy_rent_used_clothes/core/domain/usecases/usecase.dart';
import 'package:buy_rent_used_clothes/core/failure/failure.dart';
import 'package:buy_rent_used_clothes/features/auth/core/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

@injectable
class SignUpUsecase extends Usecase<Future<Either<Failure, bool>>, SignUpParams> {
  final AuthRepository authRepository;

  SignUpUsecase({required this.authRepository});

  @override
  Future<Either<Failure, bool>> call({required SignUpParams params}) async {
    return await authRepository.signup(params: params);
  }
}

class SignUpParams extends Equatable {
  final String name;
  final String phone;

  final String email;

  final String password;

  const SignUpParams({
    required this.email,
    required this.name,
    required this.phone,
    required this.password,
  });

  @override
  List<Object?> get props => [name, email, password];
}
