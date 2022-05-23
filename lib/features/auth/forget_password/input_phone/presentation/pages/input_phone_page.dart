import 'package:buy_rent_used_clothes/core/widgets/app_bar.dart';
import 'package:buy_rent_used_clothes/di/injection_container.dart';
import 'package:buy_rent_used_clothes/features/auth/forget_password/input_phone/presentation/input_phone_bloc/input_phone_bloc.dart';
import 'package:buy_rent_used_clothes/features/auth/forget_password/input_phone/presentation/widgets/input_phone_form.dart';
import 'package:buy_rent_used_clothes/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InputPhonePage extends StatelessWidget {
  const InputPhonePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
        title: S.of(context)!.forgetPassword,
      ),
      body: const _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<InputPhoneCubit>(
      create: (_) => getIt<InputPhoneCubit>(),
      child: const Padding(
        padding: EdgeInsets.all(16),
        child: InputPhoneForm(),
      ),
    );
  }
}
