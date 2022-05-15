import 'package:freezed_annotation/freezed_annotation.dart';

part 'reset_password_state.freezed.dart';

@freezed
abstract class ResetPasswordState with _$ResetPasswordState {
  const factory ResetPasswordState.initial() = Initial;

  const factory ResetPasswordState.loading() = Loading;

  const factory ResetPasswordState.isEnabled({required bool isEnabled}) =
      IsEnabled;

  const factory ResetPasswordState.confirmedSuccessfully() =
      ConfirmedSuccessfully;

}
