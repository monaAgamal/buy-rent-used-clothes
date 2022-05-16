bool isValidEmail({required String email}) {
  final validEmailRegexg = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

  return validEmailRegexg.hasMatch(email);
}
