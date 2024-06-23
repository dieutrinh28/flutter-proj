import 'package:dio/dio.dart';
import 'package:flutter_proj/constants/configs.dart';

class DioSingleton {
  static final Dio dio = Dio(
    BaseOptions(
      baseUrl: AppConfigs.apiBaseUrl,
      contentType: Headers.jsonContentType,
    ),
  );

  DioSingleton._();
}
