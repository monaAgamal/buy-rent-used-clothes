import 'package:buy_rent_used_clothes/core/domain/usecase.dart';
import 'package:buy_rent_used_clothes/core/enums/auth_status.dart';
import 'package:buy_rent_used_clothes/features/auth/core/domain/repositories/auth_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class CheckAuthStatusUseCase extends UseCase<Future<AuthStatus>, NoParams> {
  final AuthRepository authRepository ;

  CheckAuthStatusUseCase(this.authRepository);
  @override
  Future<AuthStatus> call(param) async {
    return authRepository.isLoggedIn() ;
  }
}
