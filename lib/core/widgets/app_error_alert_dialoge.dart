import 'package:buy_rent_used_clothes/core/widgets/main_button.dart';
import 'package:buy_rent_used_clothes/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppErrorAlertDialoge extends StatelessWidget {
  final String title;
  final String body;
  const AppErrorAlertDialoge(
      {
    Key? key,
    required this.title,
    required this.body,
  })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      content: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(title),
            const SizedBox(height: 12),
            Text(
              body,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 24),
            MainButton(
              label: S.of(context).ok,
              isOutlined: false,
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
