import 'package:freezed_annotation/freezed_annotation.dart';
part 'sign_up_state.freezed.dart';

@freezed
abstract class SignUpState with _$SignUpState {
  const factory SignUpState.initial() = Initial;
  const factory SignUpState.enableSignUpBtn({required bool isEnabled}) =
      EnableSignUpBtn;
  const factory SignUpState.loading() = Loading;
  const factory SignUpState.signedUpSuccessfully() = SignedUpSuccessfully;
}
