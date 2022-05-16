import 'package:buy_rent_used_clothes/core/widgets/main_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AppErrorAlertDialoge extends StatelessWidget {
  final String title;
  final String body;
  const AppErrorAlertDialoge(
      {Key? key, required this.title, required this.body})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(title),
          const SizedBox(height: 12),
          Text(body),
          const SizedBox(height: 12),
          MainButton(
            label: AppLocalizations.of(context)!.ok,
            isOutlined: false,
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
