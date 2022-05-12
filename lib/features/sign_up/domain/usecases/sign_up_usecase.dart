import 'package:buy_rent_used_clothes/core/domain/usecases/usecase.dart';
import 'package:buy_rent_used_clothes/features/sign_up/domain/repositories/sign_up_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

@injectable
class SignUpUsecase extends Usecase<Future<void>, SignUpParams> {
  final SignUpRepository signUpRepository;

  SignUpUsecase({required this.signUpRepository});

  @override
  Future<void> call({required SignUpParams params}) async {
    await signUpRepository.signup(params: params);
  }
}

class SignUpParams extends Equatable {
  final String name;

  final String email;

  final String password;

  const SignUpParams({
    required this.email,
    required this.name,
    required this.password,
  });

  @override
  List<Object?> get props => [name, email, password];
}
