import 'dart:developer';

import 'package:url_launcher/url_launcher.dart';

void openMail() async {
  final url = Uri(scheme: 'mailto');
  canLaunchUrl(url).then(
    (bool result) async {
      await launchUrl(url);
      log("$result can launch");
    },
  );
}
