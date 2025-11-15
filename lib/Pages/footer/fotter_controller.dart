import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:dio/dio.dart';

class FotterController {}

final Dio dio = Dio(
  BaseOptions(
    baseUrl: 'http://3.142.225.193:3000'
  )
);

TextEditingController email = TextEditingController();

String url = '';

int verificacao = 0;

Future<void> OpenUrl(url) async {
  final Uri uri = Uri.parse(url);
  if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
    throw Exception('Não foi possível abrir $url');
  }
}


Future<void> postEmail() async {
  final String emailDetector = email.text;
  verificacao = 200;
  try {
    if(emailDetector != ''){
      email.clear();
      final response = await dio.post(
      '/email',
      data: {
        "email": emailDetector,
      },
    );
    
    }else {
      verificacao = 300;
    }
    
  } on DioException catch (e) {
      print("Erro Dio: ${e.message}");
      verificacao = 400;
    
  } catch (e) {
    print("Erro inesperado: $e");
    verificacao = 400;
  }
}