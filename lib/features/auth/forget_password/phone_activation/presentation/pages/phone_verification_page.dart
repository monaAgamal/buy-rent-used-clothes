import 'package:buy_rent_used_clothes/di/injection_container.dart';
import 'package:buy_rent_used_clothes/features/auth/forget_password/phone_activation/presentation/bloc/phone_verification_cubit.dart';
import 'package:buy_rent_used_clothes/features/auth/forget_password/phone_activation/presentation/widgets/phone_verification_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class OtpVerficationPage extends StatelessWidget {
  final String phone;

  const OtpVerficationPage({Key? key, required this.phone}) : super(key: key);

  @override
  Widget build(BuildContext context) => _Body();
}

class _Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.checkCode),
        elevation: 0,
        centerTitle: true,
      ),
      body: BlocProvider(
        create: (context) => getIt<PhoneVerificationCubit>(),
        child: const Padding(
          padding: EdgeInsets.all(16),
          child: PhoneVerificationForm(),
        ),
      ),
    );
  }
}
