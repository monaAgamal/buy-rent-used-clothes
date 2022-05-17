import 'package:buy_rent_used_clothes/core/domain/usecase.dart';
import 'package:buy_rent_used_clothes/features/auth/core/domain/repositories/auth_repository.dart';

class AuthStatusChangesUseCase<bool, NoParams> extends UseCase {
  final AuthRepository authRepository;

  AuthStatusChangesUseCase(this.authRepository);
  @override
  call(param) {
    throw UnimplementedError();
  }
}
