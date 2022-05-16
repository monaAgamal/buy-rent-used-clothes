import 'package:buy_rent_used_clothes/features/auth/core/presentation/pages/landing_page.dart';
import 'package:buy_rent_used_clothes/features/auth/forget_password/input_phone/presentation/pages/input_phone_page.dart';
import 'package:buy_rent_used_clothes/features/auth/forget_password/mail_activation/presentation/pages/phone_verification_page.dart';
import 'package:buy_rent_used_clothes/features/auth/forget_password/reset_password/presentation/pages/reset_password_page.dart';
import 'package:buy_rent_used_clothes/features/auth/login/presentation/pages/login_page.dart';
import 'package:buy_rent_used_clothes/features/auth/sign_up/presentation/pages/sign_up_page.dart';
import 'package:buy_rent_used_clothes/features/home/presentation/pages/home_page.dart';
import 'package:buy_rent_used_clothes/routes/routes.dart';
import 'package:buy_rent_used_clothes/routes/routes_args/opt_verification_args.dart';
import 'package:flutter/material.dart';

Route<dynamic>? onGenerateRoute(RouteSettings? settings) {
  switch (settings?.name) {
    case loginRoute:
      return MaterialPageRoute(builder: (_) => const LoginPage());
    case signUpRoute:
      return MaterialPageRoute(builder: (_) => const SignUpPage());
    case homeRoute:
      return MaterialPageRoute(builder: (_) => const HomePage());
    case phoneInputeRoute:
      return MaterialPageRoute(builder: (_) => const InputPhonePage());
    case resetPasswordROute:
      return MaterialPageRoute(builder: (_) => const ResetPasswordPage());
    case phoneActivationRoute:
      return MaterialPageRoute(builder: (_) => const HomePage());
    case optVerification:
      return MaterialPageRoute(
        builder: (_) {
          final args = settings?.arguments as OtpVerificationArgs;
          return OtpVerficationPage(
            email: args.phone,
          );
        },
      );
    case landingRoute:
      return MaterialPageRoute(
        builder: (_) {
          return const LandingPage() ;
        },
      );
    default:
      return MaterialPageRoute(builder: (_) => const LandingPage());
  }
}
