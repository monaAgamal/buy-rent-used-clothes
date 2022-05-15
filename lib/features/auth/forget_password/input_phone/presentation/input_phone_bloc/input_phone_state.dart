import 'package:freezed_annotation/freezed_annotation.dart';
part 'input_phone_state.freezed.dart';

@freezed
abstract class InputPhoneState with _$InputPhoneState{
  const factory InputPhoneState.initial() = Initial ;
  const factory InputPhoneState.loading() = Loading ;
  const factory InputPhoneState.phoneSentSuccessfully() = PhoneSentSuccessfully;
  const factory InputPhoneState.enableSendPhoneButton({required bool isEnabled}) = EnableSendPhoneButton ;
}