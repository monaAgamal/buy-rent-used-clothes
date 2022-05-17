import 'package:bloc/bloc.dart';
import 'package:buy_rent_used_clothes/core/domain/usecase.dart';
import 'package:buy_rent_used_clothes/core/utils/error_state_from_failure.dart';
import 'package:buy_rent_used_clothes/features/auth/forget_password/mail_activation/domain/email_verification_usecase.dart';
import 'package:buy_rent_used_clothes/features/auth/forget_password/mail_activation/presentation/bloc/phone_verification_state.dart';
import 'package:injectable/injectable.dart';

@injectable
class PhoneVerificationCubit extends Cubit<PhoneVerificationState> {
  final SendEmailVerificationUsecase emailVerificationUsecase;

  PhoneVerificationCubit(this.emailVerificationUsecase)
      : super(const PhoneVerificationState.initial());

  void enableCheckCodeButton({
    required String code,
  }) {
    emit(
      PhoneVerificationState.isEnabled(
          isEnaled: code.isNotEmpty && code.length == 4),
    );
  }

  void sendEmailVerification() async {
    emit(const PhoneVerificationState.loading());
    final result = await emailVerificationUsecase(params: NoParams());
    result.fold(
      (l) => errorStateFromFailure(
        l,
        (_, msg) => PhoneVerificationState.error(message: msg),
      ),
      (r) => const PhoneVerificationState.successfullyVerfied(),
    );
  }
}
