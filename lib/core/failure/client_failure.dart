import 'package:buy_rent_used_clothes/core/failure/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'client_failure.freezed.dart';

@freezed
class ClientFailure extends Failure with _$ClientFailure {
  const factory ClientFailure.wrongEmailOrPassword() = WrongEmailOrPassword;

  const factory ClientFailure.usedEmail() = UsedEmail;

  const factory ClientFailure.weakPassword() = WeakPassword;

  const factory ClientFailure.forbiddenAccess() = forbiddenAccess;

  const factory ClientFailure.unAutherized() = UnAutherized;

  const factory ClientFailure.unKnownError() = UnKnownError;
}
