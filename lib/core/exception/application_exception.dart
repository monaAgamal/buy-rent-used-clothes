import 'package:buy_rent_used_clothes/core/exception/client_exception.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class ApplicationException implements Exception {}

class GenericException extends ApplicationException {
  final String message;

  GenericException(this.message);
}

firebaseAuthExceptionDecoder(
    {required FirebaseAuthException firebaseAuthException}) {
  if (firebaseAuthException.code == "email-already-in-use") {
    throw const ClientException.emailAlreadyInUse();
  } else if (firebaseAuthException.code == "invalid-email") {
    throw const ClientException.invalidEmail();
  } else if (firebaseAuthException.code == "weak-password") {
    throw const ClientException.waekPassword();
  }
}
