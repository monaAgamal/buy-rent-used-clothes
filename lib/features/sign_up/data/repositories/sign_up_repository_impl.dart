import 'package:buy_rent_used_clothes/features/sign_up/domain/data/sign_up_remote_datasource.dart';
import 'package:buy_rent_used_clothes/features/sign_up/domain/repositories/sign_up_repository.dart';
import 'package:buy_rent_used_clothes/features/sign_up/domain/usecases/sign_up_usecase.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: SignUpRepository)
class SignUpRepositoryImpl implements SignUpRepository {
  final SignupRemoteDataSource signupRemoteDataSource;

  SignUpRepositoryImpl({required this.signupRemoteDataSource});

  @override
  Future signup({required SignUpParams params}) async {}
}
