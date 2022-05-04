import 'package:buy_rent_used_clothes/core/widgets/generic_text_field.dart';
import 'package:buy_rent_used_clothes/core/widgets/main_button.dart';
import 'package:buy_rent_used_clothes/features/forget_password/input_phone/presentation/input_phone_bloc/input_phone_bloc.dart';
import 'package:buy_rent_used_clothes/features/forget_password/input_phone/presentation/input_phone_bloc/input_phone_state.dart';
import 'package:buy_rent_used_clothes/routes/routes.dart';
import 'package:buy_rent_used_clothes/routes/routes_args/opt_verification_args.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class InputPhoneForm extends StatefulWidget {
  const InputPhoneForm({Key? key}) : super(key: key);

  @override
  State<InputPhoneForm> createState() => _InputPhoneFormState();
}

class _InputPhoneFormState extends State<InputPhoneForm> {
  final TextEditingController _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final InputPhoneCubit inputPhoneCubit =
        BlocProvider.of<InputPhoneCubit>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(AppLocalizations.of(context)!.phone),
        const SizedBox(height: 16),
        GenericTextField(
          controller: _phoneController,
          hint: "phone",
          keyboardType: TextInputType.phone,
          onChanged: (phone) {
            inputPhoneCubit.enableInputPhoneButton(
                phone: _phoneController.text);
          },
        ),
        const SizedBox(height: 32),
        BlocBuilder<InputPhoneCubit, InputPhoneState>(
          bloc: inputPhoneCubit,
          builder: (_, state) {
            return state.maybeWhen(
              loading: () => MainButton(
                label: AppLocalizations.of(context)!.sendOtp,
                isOutlined: true,
                isLoading: true,
                onTap: () {},
              ),
              enableSendPhoneButton: (isEnabled) => MainButton(
                label: AppLocalizations.of(context)!.sendOtp,
                isOutlined: !isEnabled,
                onTap: isEnabled
                    ? () {
                        final args =
                            OtpVerificationArgs(phone: _phoneController.text);
                        Navigator.of(context).pushNamed(optVerification, arguments: args);
                      }
                    : () {},
              ),
              orElse: () => MainButton(
                label: AppLocalizations.of(context)!.sendOtp,
                isOutlined: true,
                onTap: () {},
              ),
            );
          },
        )
      ],
    );
  }
}
