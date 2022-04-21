import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'login_state.dart';

@injectable
class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(const LoginState.initial());

  void enableLoginButton({required String phone, required String password}) {
    emit(LoginState.enableLoginButton(
        isEnabled: phone.isNotEmpty && password.isNotEmpty));
  }

  void login() {}
}
