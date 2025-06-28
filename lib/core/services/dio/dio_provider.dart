import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final Provider<Dio> dioProvider = Provider<Dio>((ProviderRef<Dio> ref) {
  final Dio dio = Dio(
    BaseOptions(
      baseUrl: 'https://api.openweathermap.org/data/3.0/',
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 15),
      contentType: 'application/json',
    ),
  );

  // Add logging interceptor
  dio.interceptors.add(LogInterceptor(
    requestBody: true,
    responseBody: true,
    // requestHeader: true,
    responseHeader: false,
    // error: true,
    // request: true,
  ));

  // Optional: Custom retry / token / error handling interceptor
  // dio.interceptors.add(CustomInterceptor());

  return dio;
});
