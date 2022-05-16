import 'package:buy_rent_used_clothes/core/failure/client_failure.dart';
import 'package:buy_rent_used_clothes/core/failure/failure.dart';

T errorStateFromFailure<T>(
    Failure failure, T Function(Type t, String message) determinedError) {
  if (failure is ClientFailure) {
    return failure.maybeWhen(
        wrongEmailOrPassword: () =>
            determinedError(WrongEmailOrPassword, "password or email is wrong"),
        usedEmail: () => determinedError(UsedEmail, "This email is used"),
        weakPassword: () => determinedError(WeakPassword, "weak password"),
        forbiddenAccess: () => determinedError(UnAutherized, "Forbiden access"),
        unAutherized: () => determinedError(UnAutherized, "un autherized"),
        unKnownError: () =>
            determinedError(UnKnownError, "Some thing went wrong"),
        orElse: () => determinedError(UnKnownError, "Some thing went wrong"));
  } else {
    return determinedError(UnKnownError, "Some thing went wrong");
  }
}
