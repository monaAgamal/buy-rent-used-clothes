import 'dart:async';
import 'package:buy_rent_used_clothes/Theme/app_theme.dart';
import 'package:buy_rent_used_clothes/di/injection_container.dart';
import 'package:buy_rent_used_clothes/features/auth/core/presentation/cubit/auth_status_cubit.dart';
import 'package:buy_rent_used_clothes/routes/router.dart';
import 'package:buy_rent_used_clothes/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:buy_rent_used_clothes/di/injection_container.dart' as di;
import 'package:firebase_auth/firebase_auth.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.configure();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

Future init() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
// Ideal time to initialize
//   await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthStatusCubit>(
          create: (BuildContext context) => getIt<AuthStatusCubit>(),
        ),
      ],
      child: MaterialApp(
        title: 'Buy&Rent used Clothes',
        theme: appTheme,
        debugShowCheckedModeBanner: false,
        supportedLocales: const <Locale>[
          Locale('en', 'US'),
          Locale('ar', 'EG')
        ],
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        onGenerateRoute: onGenerateRoute,
        // home: landing,
        initialRoute: landingRoute,
      ),
    );
  }
}
