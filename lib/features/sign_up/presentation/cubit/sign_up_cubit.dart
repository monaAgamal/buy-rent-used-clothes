import 'package:bloc/bloc.dart';
import 'package:buy_rent_used_clothes/features/sign_up/presentation/cubit/sign_up_state.dart';
import 'package:injectable/injectable.dart';

@injectable
class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(const SignUpState.initial());

  void enableLoginButton({
    required String phone,
    required String password,
    required String confirmPassword,
    required String name,
  }) {
    emit(
      SignUpState.enableSignUpBtn(
        isEnabled: phone.isNotEmpty &&
            password.isNotEmpty &&
            confirmPassword.isNotEmpty &&
            name.isNotEmpty,
      ),
    );
  }
}
