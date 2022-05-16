import 'dart:developer';
import 'package:buy_rent_used_clothes/core/widgets/generic_text_field.dart';
import 'package:buy_rent_used_clothes/core/widgets/main_button.dart';
import 'package:buy_rent_used_clothes/features/auth/login/presentation/cubit/login_cubit.dart';
import 'package:buy_rent_used_clothes/features/auth/login/presentation/cubit/login_state.dart';
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
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final LoginCubit loginBloc = context.read<LoginCubit>();
    return BlocListener<LoginCubit, LoginState>(
      bloc: loginBloc,
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
            controller: emailController,
            hint: AppLocalizations.of(context)!.email,
            keyboardType: TextInputType.phone,
            onChanged: (phone) {
              loginBloc.enableLoginButton(
                phone: emailController.text,
                password: passwordController.text,
              );
            },
          ),
          const SizedBox(height: 16),
          GenericTextField(
            controller: passwordController,
            hint: AppLocalizations.of(context)!.password,
            keyboardType: TextInputType.text,
            isObsecure: true,
            onChanged: (password) {
              loginBloc.enableLoginButton(
                  phone: emailController.text,
                  password: passwordController.text);
            },
          ),
          const SizedBox(height: 8),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(phoneInputeRoute);
            },
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                AppLocalizations.of(context)!.forgetPassword + " ?",
                style: const TextStyle(fontSize: 16),
              ),
            ),
          ),
          const SizedBox(height: 64),
          BlocBuilder<LoginCubit, LoginState>(
            bloc: loginBloc,
            builder: (context, state) {
              return state.maybeWhen(
                loading: () => MainButton(
                  label: AppLocalizations.of(context)!.login,
                  isOutlined: true,
                  onTap: () {},
                  isLoading: true,
                ),
                enableLoginButton: (isEnabled, _) {
                  log(isEnabled.toString());
                  return MainButton(
                    onTap: () {},
                    label: AppLocalizations.of(context)!.login,
                    isOutlined: !isEnabled,
                  );
                },
                orElse: () => MainButton(
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed(homeRoute);
                  },
                  label: AppLocalizations.of(context)!.login,
                  isOutlined: passwordController.text.isEmpty &&
                      emailController.text.isEmpty,
                ),
              );
            },
          ),
          const SizedBox(height: 18),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushReplacementNamed(signUpRoute);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AppLocalizations.of(context)!.dontHaveAccountMsg,
                  style: const TextStyle(fontSize: 18),
                ),
                const SizedBox(width: 4),
                Text(
                  AppLocalizations.of(context)!.signUp,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
