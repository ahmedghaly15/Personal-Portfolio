import 'package:url_launcher/url_launcher.dart';

void openUrl(String url, {bool isEmail = false}) async {
  if (isEmail) {
    await launchUrl(
      Uri(
        scheme: 'mailto',
        path: url,
      ),
    );
  } else {
    await launchUrl(
      Uri.parse(url),
      mode: LaunchMode.inAppBrowserView,
    );
  }
}
