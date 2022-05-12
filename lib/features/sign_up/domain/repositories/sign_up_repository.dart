import 'package:buy_rent_used_clothes/features/sign_up/domain/usecases/sign_up_usecase.dart';

abstract class SignUpRepository {
  Future signup({required SignUpParams params});
}
