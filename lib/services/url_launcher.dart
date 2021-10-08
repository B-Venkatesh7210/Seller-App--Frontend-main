// ignore_for_file: avoid_print

import 'package:url_launcher/url_launcher.dart';

class UrlLauncher {
  UrlLauncher._();

  static const String _phone = '+918882664898';
  static const String _mail = 'info@ucliq.in';

  static Future _launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print("Cannot Launch $url");
    }
  }

  static Future openLink({required String url}) => _launchUrl(url);

  static Future openWhatsapp() async {
    const String url = 'https://wa.me/@$_phone';
    await _launchUrl(url);
  }

  static Future openMail() async {
    // final String sub =
    //     subject == null ? '' : "subject=${Uri.encodeFull(subject)}";
    // final String bod = body == null ? '' : "body=${Uri.encodeFull(body)}";
    // final String parameter = (sub == '' && bod == '') ? '' : '?$sub&$bod';
    // final String url = "mailto:$mail$parameter";

    const String url = "mailto:$_mail";

    await _launchUrl(url);
  }

  static Future openCall() async {
    const String url = 'tel:$_phone';
    await _launchUrl(url);
  }
}
