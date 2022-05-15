import 'package:freezed_annotation/freezed_annotation.dart';
part  'phone_verification_state.freezed.dart';

@freezed
abstract class PhoneVerificationState with _$PhoneVerificationState{
  const factory PhoneVerificationState.initial () = Initial ;
  const factory PhoneVerificationState.loading () = Loading ;
  const factory PhoneVerificationState.isEnabled({required bool isEnaled}) = IsEnabled ;
  const factory PhoneVerificationState.successfullyVerfied() = SuccessfullyVerfied ;

}


