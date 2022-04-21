import 'package:buy_rent_used_clothes/core/widgets/generic_text_field.dart';
import 'package:buy_rent_used_clothes/core/widgets/main_button.dart';
import 'package:buy_rent_used_clothes/features/login/presentation/cubit/login_cubit.dart';
import 'package:buy_rent_used_clothes/features/login/presentation/cubit/login_state.dart';
import 'package:buy_rent_used_clothes/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        state.maybeWhen(
          orElse: () {},
          authenticated: () {
            Navigator.of(context).pushNamed(homeRoute);
          },
        );
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            AppLocalizations.of(context)!.welcomeBack,
            style: Theme.of(context).textTheme.headline5?.copyWith(
                  color: Theme.of(context).colorScheme.secondary,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 12),
          Text(
            AppLocalizations.of(context)!.logInToYourAccount,
            style: Theme.of(context).textTheme.bodyText2!.copyWith(),
          ),
          const SizedBox(height: 16),
          GenericTextField(
            controller: phoneController,
            hint: AppLocalizations.of(context)!.phone,
            keyboardType: TextInputType.phone,
          ),
          const SizedBox(height: 16),
          GenericTextField(
            controller: passwordController,
            hint: AppLocalizations.of(context)!.password,
            keyboardType: TextInputType.text,
          ),
          const SizedBox(height: 64),
          BlocBuilder<LoginCubit, LoginState>(
            builder: (context, state) {
              return state.maybeWhen(
                loading: () => MainButton(
                  label: AppLocalizations.of(context)!.login,
                  isOutlined: true,
                  isLoading: true,
                ),
                enableLoginButton: (isEnabled) => MainButton(
                  label: AppLocalizations.of(context)!.login,
                  isOutlined: isEnabled,
                ),
                orElse: () => MainButton(
                  label: AppLocalizations.of(context)!.login,
                  isOutlined: passwordController.text.isEmpty &&
                      phoneController.text.isEmpty,
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
