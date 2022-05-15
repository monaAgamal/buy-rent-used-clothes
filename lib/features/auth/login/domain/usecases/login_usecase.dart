import 'package:buy_rent_used_clothes/core/domain/usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

@injectable
class LoginUseCase extends UseCase<void, void> {
  @override
  void call(param) {}
}

class LoginParam extends Equatable {
  final String phone;
  final String password;

  const LoginParam({required this.phone, required this.password});
  @override
  List<Object?> get props => [phone, password];
}
