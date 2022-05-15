import 'package:buy_rent_used_clothes/di/injection_container.dart';
import 'package:buy_rent_used_clothes/features/auth/core/presentation/cubit/auth_status_cubit.dart';
import 'package:buy_rent_used_clothes/features/auth/core/presentation/cubit/auth_status_state.dart';
import 'package:buy_rent_used_clothes/features/auth/login/presentation/pages/login_page.dart';
import 'package:buy_rent_used_clothes/features/home/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<AuthStatusCubit>(context, listen: true);
    return BlocConsumer<AuthStatusCubit, AuthStatusState>(
      bloc: bloc,
      listener: (context, state) {},
      builder: (context, state) {
        return state.maybeWhen(
          authenticated: () => const HomePage(),
          orElse: () => const LoginPage(),
        );
      },
    );
  }
}
