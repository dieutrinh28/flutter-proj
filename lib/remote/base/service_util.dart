import 'package:flutter_proj/remote/base/result.dart';

class ServiceUtil {
  const ServiceUtil._();

  static Future<Result<T>> requestApi<T>(Future<T> apiAttached) async {
    Result<T> result = Result<T>();
    try {
      result = result.copyWith(data: await apiAttached);
    } catch (_) {}
    return result;
  }
}
