
import 'package:buy_rent_used_clothes/core/widgets/app_error_alert_dialoge.dart';
import 'package:buy_rent_used_clothes/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:open_mail_app/open_mail_app.dart';

void openMail({required BuildContext context}) async {
  /// Android: Will open mail app or show native picker.
  /// iOS: Will open mail app if single mail app found.
  final OpenMailAppResult result = await OpenMailApp.openMailApp();

  // If no mail apps found, show error
  if ( result.didOpen &&  result.canOpen) {
    showDialog(
      context: context,
      builder: (context) => AppErrorAlertDialoge(
        title: S.of(context) .canNotOpenMailApps,
        body:
            S.of(context) .plsActivateAccountManuallyAndProceed,
      ),
    );
  } else if ( result.didOpen && result.canOpen) {
    showDialog(
      context: context,
      builder: (_) {
        return MailAppPickerDialog(
          mailApps: result.options,
        );
      },
    );
  }
}

