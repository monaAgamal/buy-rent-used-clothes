import 'package:buy_rent_used_clothes/Theme/app_theme.dart';
import 'package:buy_rent_used_clothes/features/login/presentation/pages/login_page.dart';
import 'package:buy_rent_used_clothes/routes/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:buy_rent_used_clothes/di/injection_container.dart' as di;
import 'package:firebase_auth/firebase_auth.dart';

Future init() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
// Ideal time to initialize
//   await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
}

void main() async {
  await di.configure();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Buy&Rent used Clothes',
      theme: appTheme,
      debugShowCheckedModeBanner: false,
      supportedLocales: const <Locale>[Locale('en', 'US'), Locale('ar', 'EG')],
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      onGenerateRoute: onGenerateRoute,
      home: const LoginPage(),
    );
  }
}
