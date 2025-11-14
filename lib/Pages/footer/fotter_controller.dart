import 'package:url_launcher/url_launcher.dart';
import 'package:dio/dio.dart';

final Dio dio = Dio(
  BaseOptions(
    baseUrl: 'http://3.142.225.193:3000'
  )
);

String url = '';

Future<void> OpenUrl(url) async {
  final Uri uri = Uri.parse(url);
  if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
    throw Exception('Não foi possível abrir $url');
  }
}


Future<void> postEmail() async {
  try {
    final response = await dio.post(
      '/email',
      data: {
        "email": "heitortorrezani@gmail.com",
      },
    );

    print("Resposta da API: ${response.data}");
  } on DioException catch (e) {
    print("Erro Dio: ${e.response?.data ?? e.message}");
  } catch (e) {
    print("Erro inesperado: $e");
  }
}