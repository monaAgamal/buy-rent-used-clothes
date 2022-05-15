import 'package:bloc/bloc.dart';
import 'package:buy_rent_used_clothes/features/auth/forget_password/reset_password/presentation/cubit/reset_password_state.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

@injectable
class ResetPasswordCubit extends Cubit<ResetPasswordState> {
  ResetPasswordCubit() : super(const ResetPasswordState.initial());

  void enableConfirmPasswordButton({
    required String newPassword,
    required String confirmPassword,
  }) {
    emit(
      ResetPasswordState.isEnabled(
        isEnabled: newPassword.isNotEmpty &&
            confirmPassword.isNotEmpty &&
            newPassword == confirmPassword,
      ),
    );
  }
}
