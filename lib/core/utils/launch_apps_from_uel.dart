import 'dart:developer';

import 'package:url_launcher/url_launcher.dart';

void openMail() {
  canLaunchUrl(Uri(scheme: 'mailto:')).then(
    (bool result) {
      log("$result can launch");
    },
  );
}
