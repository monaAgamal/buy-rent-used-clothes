import 'package:buy_rent_used_clothes/core/domain/usecase.dart';
import 'package:buy_rent_used_clothes/core/domain/usecases/usecase.dart';
import 'package:buy_rent_used_clothes/features/auth/core/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:buy_rent_used_clothes/core/failure/failure.dart';

@injectable
class SendEmailVerificationUsecase
    extends Usecase<Future<Either<Failure, bool>>, NoParams> {
  final AuthRepository authRepository;

  SendEmailVerificationUsecase({required this.authRepository});

  @override
  Future<Either<Failure, bool>> call({required NoParams params}) async {
    return await authRepository.sendAccountEmailActivation();
  }
}
