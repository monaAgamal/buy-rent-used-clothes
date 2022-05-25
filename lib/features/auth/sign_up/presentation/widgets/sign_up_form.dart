import 'dart:developer';

import 'package:buy_rent_used_clothes/core/utils/email_validation.dart';
import 'package:buy_rent_used_clothes/core/widgets/app_error_alert_dialoge.dart';
import 'package:buy_rent_used_clothes/core/widgets/generic_text_field.dart';
import 'package:buy_rent_used_clothes/core/widgets/main_button.dart';
import 'package:buy_rent_used_clothes/features/auth/sign_up/domain/usecases/sign_up_usecase.dart';
import 'package:buy_rent_used_clothes/features/auth/sign_up/presentation/cubit/sign_up_cubit.dart';
import 'package:buy_rent_used_clothes/features/auth/sign_up/presentation/cubit/sign_up_state.dart';
import 'package:buy_rent_used_clothes/generated/l10n.dart';
import 'package:buy_rent_used_clothes/routes/routes.dart';
import 'package:buy_rent_used_clothes/routes/routes_args/opt_verification_args.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    return BlocListener<SignUpCubit, SignUpState>(
      listener: (context, state) {
        state.maybeWhen(
          orElse: () {},
          error: (msg) {
            showDialog(
              context: context,
              builder: (_) => AppErrorAlertDialoge(
                title: S.of(context).signUpError,
                body: msg,
              ),
            );
          },
          signedUpSuccessfully: () => Navigator.of(context).pushNamed(
            optVerification,
            arguments: OtpVerificationArgs(
              phone: emailController.text,
            ),
          ),
        );
      },
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            GenericTextField(
              hint: S.of(context).name,
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
              hint: S.of(context).email,
              keyboardType: TextInputType.emailAddress,
              validator: (emial) {
                if (emailController.text.isEmpty) {
                  return S.of(context).thisFieldIsRequiered;
                } else if (isValidEmail(email: emailController.text)) {}
                return null;
              },
              onChanged: (emial) {
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
              hint: S.of(context).password,
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
                hint: S.of(context).confirmPassword,
                keyboardType: TextInputType.text,
                isObsecure: true,
                validator: (confirmPassword) {
                  if (confirmPasswordController.text.isEmpty) {
                    return S.of(context).thisFieldIsRequiered;
                  }
                  if (confirmPasswordController.text !=
                      passwordController.text) {
                    return S.of(context).confirmNewPassword;
                  }
                  return null;
                },
                onChanged: (confirmPassword) {
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
                log(state.toString());
                return state.maybeWhen(
                  loading: () {
                    return MainButton(
                      onTap: () {},
                      isLoading: true,
                      label: S.of(context).signUp,
                      isOutlined: false,
                    );
                  },
                  enableSignUpBtn: (isEnabled) => MainButton(
                    onTap: () {
                      final bool? isValidForm =
                          _formKey.currentState?.validate();
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
                    label: S.of(context).signUp,
                    isOutlined: !isEnabled,
                  ),
                  error: (_) {
                    return MainButton(
                      onTap: () {
                        final bool? isValidForm =
                            _formKey.currentState?.validate();
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
                      label: S.of(context).signUp,
                      isOutlined: false,
                    );
                  },
                  orElse: () => MainButton(
                    onTap: () {},
                    label: S.of(context).signUp,
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
                    S.of(context).alreadyHaveAccountMsg,
                    style: Theme.of(context).textTheme.bodyText2?.copyWith(
                          fontSize: 18,
                        ),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    S.of(context).login,
                    style: Theme.of(context).textTheme.bodyText2?.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
