import 'package:buy_rent_used_clothes/core/widgets/generic_text_field.dart';
import 'package:buy_rent_used_clothes/core/widgets/main_button.dart';
import 'package:buy_rent_used_clothes/features/auth/forget_password/reset_password/presentation/cubit/reset_password_cubit.dart';
import 'package:buy_rent_used_clothes/features/auth/forget_password/reset_password/presentation/cubit/reset_password_state.dart';
import 'package:buy_rent_used_clothes/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class ResetPasswordForm extends StatefulWidget {
  const ResetPasswordForm({Key? key}) : super(key: key);

  @override
  _ResetPasswordFormState createState() => _ResetPasswordFormState();
}

class _ResetPasswordFormState extends State<ResetPasswordForm> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    final _cubit = Provider.of<ResetPasswordCubit>(context);
    return Form(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(AppLocalizations.of(context)!.newPassword),
          const SizedBox(height: 16),
          GenericTextField(
            hint: AppLocalizations.of(context)!.newPassword,
            isObsecure: true,
            onChanged: (newPassword) {
              _cubit.enableConfirmPasswordButton(
                confirmPassword: _confirmPasswordController.text,
                newPassword: _passwordController.text,
              );
            },
            controller: _passwordController,
          ),
          const SizedBox(height: 16),
          Text(AppLocalizations.of(context)!.confirmNewPassword),
          const SizedBox(height: 16),
          GenericTextField(
            hint: AppLocalizations.of(context)!.confirmPassword,
            isObsecure: true,
            onChanged: (newPassword) {
              _cubit.enableConfirmPasswordButton(
                confirmPassword: _confirmPasswordController.text,
                newPassword: _passwordController.text,
              );
            },
            controller: _confirmPasswordController,
          ),
          const SizedBox(height: 42),
          BlocBuilder<ResetPasswordCubit, ResetPasswordState>(
            builder: (context, state) {
              return state.maybeWhen(
                isEnabled: (isEnabled) {
                  return MainButton(
                    label: AppLocalizations.of(context)!.confirmPassword,
                    isOutlined: !isEnabled,
                    onTap: isEnabled
                        ? () {
                            Navigator.of(context).pushNamed(homeRoute);
                          }
                        : () {},
                  );
                },
                orElse: () => MainButton(
                  label: AppLocalizations.of(context)!.confirmPassword,
                  isOutlined: true,
                  onTap: () {},
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
