import 'package:dio/dio.dart';

class AppConfig {
  AppConfig._();

  static const String baseURL = "https://api.api-ninjas.com/v1";
  static const String apiKey = "LXoQpexStIbe+bidqWvKGg==QcFjWD9v9Xibtf0b";
  static const String appName = 'Payment App';
  static final dio = Dio(
    BaseOptions(
      baseUrl: baseURL,
      connectTimeout: const Duration(seconds: 60),
      receiveTimeout: const Duration(seconds: 60),
      headers: <String, dynamic>{
        'Content-Type': 'application/json',
      },
    ),
  );

  static void addHeaderDio(String key, dynamic value) {
    dio.options.headers[key] = value;
  }
}
