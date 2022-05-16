import 'package:bloc/bloc.dart';
import 'package:buy_rent_used_clothes/core/utils/error_state_from_failure.dart';
import 'package:buy_rent_used_clothes/features/auth/sign_up/domain/usecases/sign_up_usecase.dart';
import 'package:buy_rent_used_clothes/features/auth/sign_up/presentation/cubit/sign_up_state.dart';
import 'package:injectable/injectable.dart';

@injectable
class SignUpCubit extends Cubit<SignUpState> {
  final SignUpUsecase signUpUsecase;

  SignUpCubit(this.signUpUsecase) : super(const SignUpState.initial());

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
            name.isNotEmpty &&
            password == confirmPassword,
      ),
    );
  }

  Future signUp({required SignUpParams params}) async {
    emit(const SignUpState.loading());
    final result = await signUpUsecase(params: params);
    // emit(const SignUpState.signedUpSuccessfully());
    emit(
      result.fold(
        (l) => errorStateFromFailure(
            l, (_, msg) => SignUpState.error(message: msg)),
        (r) => const SignUpState.signedUpSuccessfully(),
      ),
    );
  }
}
