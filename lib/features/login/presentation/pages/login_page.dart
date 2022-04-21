import 'package:buy_rent_used_clothes/features/login/presentation/cubit/login_cubit.dart';
import 'package:buy_rent_used_clothes/features/login/presentation/widgets/login_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(elevation: 0),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BlocProvider<LoginCubit>(
          create: (context) => LoginCubit(),
          child: const LoginForm(),
        ),
      ),
    );
  }
}
