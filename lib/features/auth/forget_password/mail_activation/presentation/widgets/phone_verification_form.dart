import 'package:buy_rent_used_clothes/core/utils/launch_apps_from_uel.dart';
import 'package:buy_rent_used_clothes/core/widgets/app_error_alert_dialoge.dart';
import 'package:buy_rent_used_clothes/core/widgets/main_button.dart';
import 'package:buy_rent_used_clothes/features/auth/forget_password/mail_activation/presentation/bloc/phone_verification_cubit.dart';
import 'package:buy_rent_used_clothes/features/auth/forget_password/mail_activation/presentation/bloc/phone_verification_state.dart';
import 'package:buy_rent_used_clothes/generated/l10n.dart';
import 'package:buy_rent_used_clothes/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class PhoneVerificationForm extends StatelessWidget {
  final String email;
  const PhoneVerificationForm({Key? key, required this.email})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of<PhoneVerificationCubit>(context);
    return BlocListener<PhoneVerificationCubit, PhoneVerificationState>(
      listener: (context, state) {
        state.maybeWhen(
          orElse: () {},
          error: (msg) => showDialog(
            context: context,
            builder: (context) => const AppErrorAlertDialoge(
              title: "Sending emial error",
              body: "",
            ),
          ),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 24),
          Text(
            S.of(context)!.codeSentToYourEmail,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          GestureDetector(
            onTap: () {
              openMail(context: context);
            },
            child: Text(
              email,
              style: const TextStyle(
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          const SizedBox(height: 16),
          Text(S.of(context)!.checkMailToVerify),
          const SizedBox(height: 36),
          // Padding(
          //   padding: const EdgeInsets.all(12),
          //   child: PinCodeTextField(
          //     showCursor: true,
          //     animationDuration: const Duration(milliseconds: 12),
          //     animationCurve: Curves.bounceInOut,
          //     keyboardType: TextInputType.phone,
          //     pinTheme: PinTheme(
          //       borderRadius: BorderRadius.circular(12),
          //       shape: PinCodeFieldShape.box,
          //       disabledColor: Theme.of(context).colorScheme.secondary,
          //       activeColor: Theme.of(context).colorScheme.secondary,
          //       activeFillColor: Theme.of(context).colorScheme.secondary,
          //       inactiveColor:
          //           Theme.of(context).colorScheme.secondary.withOpacity(0.2),
          //       selectedColor:
          //           Theme.of(context).colorScheme.secondary.withOpacity(0.2),
          //     ),
          //     onChanged: (code) {
          //       bloc.enableCheckCodeButton(code: code);
          //     },
          //     length: 4,
          //     appContext: context,
          //   ),
          // ),
          const SizedBox(height: 24),
          BlocBuilder<PhoneVerificationCubit, PhoneVerificationState>(
            bloc: bloc,
            builder: (context, state) {
              return state.maybeWhen(
                isEnabled: (isEnabled) {
                  return MainButton(
                    label: S.of(context)!.checkCode,
                    isOutlined: !isEnabled,
                    onTap: () {
                      Navigator.of(context).pushNamed(resetPasswordROute);
                    },
                  );
                },
                loading: () {
                  return MainButton(
                    label: S.of(context)!.resendEmail,
                    isOutlined: false,
                    onTap: () {},
                  );
                },
                orElse: () => MainButton(
                  label: S.of(context)!.resendEmail,
                  isOutlined: false,
                  onTap: () {
                    bloc.sendEmailVerification();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
