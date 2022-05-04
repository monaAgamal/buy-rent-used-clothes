import 'package:buy_rent_used_clothes/di/injection_container.dart';
import 'package:buy_rent_used_clothes/features/sign_up/presentation/cubit/sign_up_cubit.dart';
import 'package:buy_rent_used_clothes/features/sign_up/presentation/widgets/sign_up_form.dart';
import 'package:flutter/material.dart';
import 'package:buy_rent_used_clothes/core/widgets/empty_app_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: emptyAppbar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BlocProvider<SignUpCubit>(
          create: (_) => getIt<SignUpCubit>(),
          child: const SignUpForm(),
        ),
      ),
    );
  }
}
