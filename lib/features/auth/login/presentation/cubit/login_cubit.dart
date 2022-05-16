import 'package:bloc/bloc.dart';
import 'package:buy_rent_used_clothes/core/utils/error_state_from_failure.dart';
import 'package:buy_rent_used_clothes/features/auth/login/domain/usecases/login_usecase.dart';
import 'package:injectable/injectable.dart';
import 'login_state.dart';

@injectable
class LoginCubit extends Cubit<LoginState> {
  final LoginUseCase loginUseCase;
  LoginCubit(this.loginUseCase) : super(const LoginState.initial());

  void enableLoginButton({required String phone, required String password}) {
    emit(
      LoginState.enableLoginButton(
        isEnabled: phone.isNotEmpty && password.isNotEmpty,
        dateTime: DateTime.now(),
      ),
    );
  }

  void login({required String email, required String password}) async {
    emit(const LoginState.loading());
    final result = await loginUseCase(LoginParam(
      email: email,
      password: password,
    ));
    emit(result.fold(
        (l) => errorStateFromFailure(
            l, (_, msg) => LoginState.error(message: msg)),
        (r) => const LoginState.authenticated()));
  }
}
