import 'package:flutter_proj/remote/base/result.dart';

class BaseApiController {
  Future<T> handleResponseFuture<T>(
    Future<Result<T>> future,
  ) async {
    return handleResponse(await future);
  }

  T handleResponse<T>(
    Result<T> response, {
    T Function(T? data)? successIntercept,
    Function(Error? error)? onError,
  }) {
    if (response.success != null) {
      if (successIntercept != null) {
        return successIntercept(response.data);
      }

      if (null is T) {
        return response.data as T;
      }

      if (response.data == null) {
        throw Exception("API server response an invalid response");
      }

      return response.data!;
    } else {
      final error = response.error;
      if (onError != null) return onError(error);

      if (error != null) {
        throw Exception(Error(code: error.code, message: error.message));
      } else {
        throw Exception("API server response an invalid response");
      }
    }
  }

  Future<T> handleWithFreshTokenRetry<T>(
      Future<Result<T>> Function() action) async {
    return handleResponseFuture(action());
  }
}
