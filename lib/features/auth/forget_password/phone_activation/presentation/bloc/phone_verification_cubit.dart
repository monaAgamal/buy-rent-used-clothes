import 'package:bloc/bloc.dart';
import 'package:buy_rent_used_clothes/features/auth/forget_password/phone_activation/presentation/bloc/phone_verification_state.dart';
import 'package:injectable/injectable.dart';

@injectable
class PhoneVerificationCubit extends Cubit<PhoneVerificationState> {
  PhoneVerificationCubit() : super(const PhoneVerificationState.initial());

  void enableCheckCodeButton({
    required String code,
  }) {
    emit(
      PhoneVerificationState.isEnabled(
          isEnaled: code.isNotEmpty && code.length == 4),
    );
  }
}
