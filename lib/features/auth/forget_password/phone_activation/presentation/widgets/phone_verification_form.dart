import 'package:buy_rent_used_clothes/core/widgets/main_button.dart';
import 'package:buy_rent_used_clothes/features/auth/forget_password/phone_activation/presentation/bloc/phone_verification_cubit.dart';
import 'package:buy_rent_used_clothes/features/auth/forget_password/phone_activation/presentation/bloc/phone_verification_state.dart';
import 'package:buy_rent_used_clothes/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:provider/provider.dart';

class PhoneVerificationForm extends StatelessWidget {
  const PhoneVerificationForm();

  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of<PhoneVerificationCubit>(context);
    return Column(
      children: [
        const SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.all(12),
          child: PinCodeTextField(
            showCursor: true,
            animationDuration: const Duration(milliseconds: 12),
            animationCurve: Curves.bounceInOut,
            keyboardType: TextInputType.phone,
            pinTheme: PinTheme(
              shape: PinCodeFieldShape.box,
              disabledColor: Theme.of(context).colorScheme.secondary,
              activeColor: Theme.of(context).colorScheme.secondary,
              activeFillColor: Theme.of(context).colorScheme.secondary,
              inactiveColor:
                  Theme.of(context).colorScheme.secondary.withOpacity(0.2),
              selectedColor:
                  Theme.of(context).colorScheme.secondary.withOpacity(0.2),
            ),
            onChanged: (code) {
              bloc.enableCheckCodeButton(code: code);
            },
            length: 4,
            appContext: context,
          ),
        ),
        const SizedBox(height: 24),
        BlocBuilder<PhoneVerificationCubit, PhoneVerificationState>(
          bloc: bloc,
          builder: (context, state) {
            return state.maybeWhen(
              isEnabled: (isEnabled) {
                return MainButton(
                  label: AppLocalizations.of(context)!.checkCode,
                  isOutlined: !isEnabled,
                  onTap: () {
                    Navigator.of(context).pushNamed(resetPasswordROute)  ;
                  },
                );
              },
              orElse: () => MainButton(
                label: AppLocalizations.of(context)!.checkCode,
                isOutlined: true,
                onTap: () {},
              ),
            );
          },
        ),
      ],
    );
  }
}
