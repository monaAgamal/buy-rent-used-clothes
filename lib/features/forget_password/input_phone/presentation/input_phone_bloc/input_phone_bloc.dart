import 'package:buy_rent_used_clothes/features/forget_password/input_phone/presentation/input_phone_bloc/input_phone_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class InputPhoneCubit extends Cubit<InputPhoneState> {
  InputPhoneCubit() : super(const InputPhoneState.initial());

  void enableInputPhoneButton({required String phone}) {
    emit(InputPhoneState.enableSendPhoneButton(isEnabled: phone.isNotEmpty));
  }
}
