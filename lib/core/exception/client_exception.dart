import 'package:buy_rent_used_clothes/core/exception/application_exception.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'client_exception.freezed.dart';

@freezed
abstract class ClientException extends ApplicationException
    with _$ClientException {
  const factory ClientException.emailAlreadyInUse() = EmailAlreadyInUse;

  const factory ClientException.waekPassword() = WaekPassword;

  const factory ClientException.invalidEmail() = InvalidEmail;

  const factory ClientException.unKnownError() = UnKnownError;
}
