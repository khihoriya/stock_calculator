
import 'package:url_launcher/url_launcher.dart';

class Constant {
  static String supportEmail = "";

  void launchEmailSupport() async {
    String? encodeQueryParameters(Map<String, String> params) {
      return params.entries
          .map((MapEntry<String, String> e) =>
              '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
          .join('&');
    }

    if (Constant.supportEmail.isNotEmpty) {
      final Uri emailLaunchUri = Uri(
        scheme: 'mailto',
        path: Constant.supportEmail,
        query: encodeQueryParameters(<String, String>{
          'subject': 'Help & Support',
        }),
      );
      launchUrl(emailLaunchUri);
    } else {}
  }
}
