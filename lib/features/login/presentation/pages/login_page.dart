import 'package:buy_rent_used_clothes/di/injection_container.dart';
import 'package:buy_rent_used_clothes/features/forget_password/input_phone/presentation/input_phone_bloc/input_phone_bloc.dart';
import 'package:buy_rent_used_clothes/features/login/presentation/cubit/login_cubit.dart';
import 'package:buy_rent_used_clothes/features/login/presentation/widgets/login_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(elevation: 0),
      body:  Provider(
        create: (_) => getIt<LoginCubit>(),
        child: _Body(),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: LoginForm(),
    );
  }
}
