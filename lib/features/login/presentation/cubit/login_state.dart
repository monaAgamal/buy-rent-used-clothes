import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_state.freezed.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState.initial() = Initial;
  const factory LoginState.enableLoginButton({required bool isEnabled}) =
      enableLoginButton;
  const factory LoginState.loading() = Loading;
  const factory LoginState.authenticated() = Authenticated;
}
