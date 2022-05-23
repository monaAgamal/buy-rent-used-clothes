// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Welcome Back!`
  String get welcomeBack {
    return Intl.message(
      'Welcome Back!',
      name: 'welcomeBack',
      desc: '',
      args: [],
    );
  }

  /// `Log in to your account`
  String get logInToYourAccount {
    return Intl.message(
      'Log in to your account',
      name: 'logInToYourAccount',
      desc: '',
      args: [],
    );
  }

  /// `Phone`
  String get phone {
    return Intl.message(
      'Phone',
      name: 'phone',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Forget Password`
  String get forgetPassword {
    return Intl.message(
      'Forget Password',
      name: 'forgetPassword',
      desc: '',
      args: [],
    );
  }

  /// `Sign up`
  String get signUp {
    return Intl.message(
      'Sign up',
      name: 'signUp',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?`
  String get alreadyHaveAccountMsg {
    return Intl.message(
      'Already have an account?',
      name: 'alreadyHaveAccountMsg',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account?`
  String get dontHaveAccountMsg {
    return Intl.message(
      'Don\'t have an account?',
      name: 'dontHaveAccountMsg',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message(
      'Name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Confirm password`
  String get confirmPassword {
    return Intl.message(
      'Confirm password',
      name: 'confirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `ٌReset password`
  String get resetPassword {
    return Intl.message(
      'ٌReset password',
      name: 'resetPassword',
      desc: '',
      args: [],
    );
  }

  /// `To oreset yor password you've to enter your phone number, to sed verification code`
  String get resetPasswordMsg {
    return Intl.message(
      'To oreset yor password you\'ve to enter your phone number, to sed verification code',
      name: 'resetPasswordMsg',
      desc: '',
      args: [],
    );
  }

  /// `Send code`
  String get sendOtp {
    return Intl.message(
      'Send code',
      name: 'sendOtp',
      desc: '',
      args: [],
    );
  }

  /// `Verification code`
  String get verificationCode {
    return Intl.message(
      'Verification code',
      name: 'verificationCode',
      desc: '',
      args: [],
    );
  }

  /// `New password`
  String get newPassword {
    return Intl.message(
      'New password',
      name: 'newPassword',
      desc: '',
      args: [],
    );
  }

  /// `Confirm password`
  String get confirmNewPassword {
    return Intl.message(
      'Confirm password',
      name: 'confirmNewPassword',
      desc: '',
      args: [],
    );
  }

  /// `Check code`
  String get checkCode {
    return Intl.message(
      'Check code',
      name: 'checkCode',
      desc: '',
      args: [],
    );
  }

  /// `Check`
  String get check {
    return Intl.message(
      'Check',
      name: 'check',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `This filed is required`
  String get thisFieldIsRequiered {
    return Intl.message(
      'This filed is required',
      name: 'thisFieldIsRequiered',
      desc: '',
      args: [],
    );
  }

  /// `Confirm password should match password`
  String get confirmPasswordMustMatchPassword {
    return Intl.message(
      'Confirm password should match password',
      name: 'confirmPasswordMustMatchPassword',
      desc: '',
      args: [],
    );
  }

  /// `Ok`
  String get ok {
    return Intl.message(
      'Ok',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `Error creating account`
  String get signUpError {
    return Intl.message(
      'Error creating account',
      name: 'signUpError',
      desc: '',
      args: [],
    );
  }

  /// `Verify account`
  String get verifyAccount {
    return Intl.message(
      'Verify account',
      name: 'verifyAccount',
      desc: '',
      args: [],
    );
  }

  /// `Verification email sent to your email`
  String get codeSentToYourEmail {
    return Intl.message(
      'Verification email sent to your email',
      name: 'codeSentToYourEmail',
      desc: '',
      args: [],
    );
  }

  /// `Resend email`
  String get resendEmail {
    return Intl.message(
      'Resend email',
      name: 'resendEmail',
      desc: '',
      args: [],
    );
  }

  /// `Check your mail to verify and proceed`
  String get checkMailToVerify {
    return Intl.message(
      'Check your mail to verify and proceed',
      name: 'checkMailToVerify',
      desc: '',
      args: [],
    );
  }

  /// `Can't open mail app`
  String get canNotOpenMailApps {
    return Intl.message(
      'Can\'t open mail app',
      name: 'canNotOpenMailApps',
      desc: '',
      args: [],
    );
  }

  /// `Please check your mail and activate your account and proceed`
  String get plsActivateAccountManuallyAndProceed {
    return Intl.message(
      'Please check your mail and activate your account and proceed',
      name: 'plsActivateAccountManuallyAndProceed',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
