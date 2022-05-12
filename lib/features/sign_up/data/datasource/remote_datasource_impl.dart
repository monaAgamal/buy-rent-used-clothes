import 'package:buy_rent_used_clothes/core/data/models/user_model.dart';
import 'package:buy_rent_used_clothes/core/data/user_manegment_service.dart';
import 'package:buy_rent_used_clothes/features/sign_up/domain/data/sign_up_remote_datasource.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: SignupRemoteDataSource)
class SignupRemoteDataSourceImpl implements SignupRemoteDataSource {
  final UserManegmentService userManegmentService;

  SignupRemoteDataSourceImpl(this.userManegmentService);

  @override
  Future<UserModel?> signUp({
    required String email,
    required String password,
    required String name,
  }) async {
    final UserModel? user = await userManegmentService.signUp(
        email: email, password: password, name: name);
    return user;
  }
}
