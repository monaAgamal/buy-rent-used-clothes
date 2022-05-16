import 'package:buy_rent_used_clothes/di/injection_container.dart';
import 'package:buy_rent_used_clothes/features/auth/forget_password/mail_activation/presentation/bloc/phone_verification_cubit.dart';
import 'package:buy_rent_used_clothes/features/auth/forget_password/mail_activation/presentation/widgets/phone_verification_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class OtpVerficationPage extends StatelessWidget {
  final String email;

  const OtpVerficationPage({Key? key, required this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) => _Body(email: email);
}

class _Body extends StatelessWidget {
  final String email;

  const _Body({Key? key, required this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)!.verifyAccount,
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: BlocProvider(
        create: (context) => getIt<PhoneVerificationCubit>(),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: PhoneVerificationForm(
            email: email,
          ),
        ),
      ),
    );
  }
}
