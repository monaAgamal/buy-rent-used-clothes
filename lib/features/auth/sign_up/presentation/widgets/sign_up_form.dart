import 'package:buy_rent_used_clothes/core/widgets/generic_text_field.dart';
import 'package:buy_rent_used_clothes/core/widgets/main_button.dart';
import 'package:buy_rent_used_clothes/features/auth/sign_up/domain/usecases/sign_up_usecase.dart';
import 'package:buy_rent_used_clothes/features/auth/sign_up/presentation/cubit/sign_up_cubit.dart';
import 'package:buy_rent_used_clothes/features/auth/sign_up/presentation/cubit/sign_up_state.dart';
import 'package:buy_rent_used_clothes/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final signUpBloc = BlocProvider.of<SignUpCubit>(context);
    return Form(
      key: _formKey,
      child: Column(
        children: [
          GenericTextField(
            hint: AppLocalizations.of(context)!.name,
            controller: nameController,
            keyboardType: TextInputType.text,
            onChanged: (name) {
              signUpBloc.enableLoginButton(
                phone: emailController.text,
                password: passwordController.text,
                confirmPassword: confirmPasswordController.text,
                name: nameController.text,
              );
            },
          ),
          const SizedBox(height: 16),
          GenericTextField(
            controller: emailController,
            hint: AppLocalizations.of(context)!.phone,
            keyboardType: TextInputType.emailAddress,
            onChanged: (name) {
              signUpBloc.enableLoginButton(
                phone: emailController.text,
                password: passwordController.text,
                confirmPassword: confirmPasswordController.text,
                name: nameController.text,
              );
            },
          ),
          const SizedBox(height: 16),
          GenericTextField(
            hint: AppLocalizations.of(context)!.password,
            controller: passwordController,
            keyboardType: TextInputType.text,
            isObsecure: true,
            onChanged: (name) {
              signUpBloc.enableLoginButton(
                phone: emailController.text,
                password: passwordController.text,
                confirmPassword: confirmPasswordController.text,
                name: nameController.text,
              );
            },
          ),
          const SizedBox(height: 16),
          GenericTextField(
              controller: confirmPasswordController,
              hint: AppLocalizations.of(context)!.confirmPassword,
              keyboardType: TextInputType.text,
              isObsecure: true,
              onChanged: (name) {
                signUpBloc.enableLoginButton(
                  phone: emailController.text,
                  password: passwordController.text,
                  confirmPassword: confirmPasswordController.text,
                  name: nameController.text,
                );
              }),
          const SizedBox(height: 42),
          BlocBuilder<SignUpCubit, SignUpState>(
            bloc: signUpBloc,
            builder: (_, state) {
              return state.maybeWhen(
                enableSignUpBtn: (isEnabled) => MainButton(
                  onTap: () {
                    final bool? isValidForm = _formKey.currentState?.validate();
                    if (isValidForm != null && isValidForm) {
                      signUpBloc.signUp(
                        params: SignUpParams(
                          name: nameController.text,
                          email: emailController.text,
                          password: passwordController.text,
                          phone: '01062803457',
                        ),
                      );
                    }
                    // Navigator.of(context).pushReplacementNamed(homeRoute);
                  },
                  label: AppLocalizations.of(context)!.signUp,
                  isOutlined: !isEnabled,
                ),
                orElse: () => MainButton(
                  onTap: () {},
                  label: AppLocalizations.of(context)!.signUp,
                  isOutlined: true,
                ),
              );
            },
          ),
          const SizedBox(height: 24),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushReplacementNamed(loginRoute);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AppLocalizations.of(context)!.alreadyHaveAccountMsg,
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        fontSize: 18,
                      ),
                ),
                const SizedBox(width: 5),
                Text(
                  AppLocalizations.of(context)!.login,
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
