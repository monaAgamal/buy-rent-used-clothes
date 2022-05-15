import 'package:buy_rent_used_clothes/features/auth/forget_password/reset_password/presentation/cubit/reset_password_cubit.dart';
import 'package:buy_rent_used_clothes/features/auth/forget_password/reset_password/presentation/widgets/reset_password_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          AppLocalizations.of(context)!.resetPassword,
        ),
      ),
      body:   Padding(
        padding: const EdgeInsets.all(16),
        child: Provider<ResetPasswordCubit>(
          create: (_) => ResetPasswordCubit(),
          child: const ResetPasswordForm(),
        ),
      ),
    );
  }
}
