import 'package:url_launcher/url_launcher.dart';
String url = '';

Future<void> OpenUrl(url) async {
  final Uri uri = Uri.parse(url);
  if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
    throw Exception('Não foi possível abrir $url');
  }
}