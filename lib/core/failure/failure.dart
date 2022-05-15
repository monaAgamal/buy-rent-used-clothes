import 'package:buy_rent_used_clothes/core/exception/application_exception.dart';
import 'package:buy_rent_used_clothes/core/exception/client_exception.dart';
import 'package:buy_rent_used_clothes/core/failure/client_failure.dart';

abstract class Failure {}

class GenericFailure implements Failure {
  final String message;

  GenericFailure(this.message);
}

Failure firebaseExceptionToFailureDecoder(ApplicationException exception) {
  if (exception is ClientException) {
    return exception.maybeWhen(
      orElse: () => const ClientFailure.unKnownError(),
      emailAlreadyInUse: () => const ClientFailure.usedEmail(),
      unKnownError: () => const ClientFailure.unKnownError(),
    );
  }
  return GenericFailure("Some thing went wrong");
}
