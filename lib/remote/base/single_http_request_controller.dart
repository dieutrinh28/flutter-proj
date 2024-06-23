import 'dart:async';

import 'package:flutter_proj/remote/base/result.dart';
import 'package:flutter_proj/remote/base/service_util.dart';

abstract class AbstractSingleHttpRequestController {
  Future<void> cancelCurrentRequest();

  Future<void> cancelAndStartListeningRequest<T>({
    required Future<T> request,
    required void Function(T data) onDone,
  });

  Future<void> cancelableFetchData<Result>({
    required void Function()? onLoading,
    required Future<Result> requestApi,
    required void Function(Result? data)? onSuccess,
    required void Function(String? message)? onError,
  });
}

class SingleHttpRequestController extends AbstractSingleHttpRequestController {
  StreamSubscription<dynamic>? _streamSubscription;

  @override
  Future<void> cancelCurrentRequest() async {
    try {
      _streamSubscription?.cancel();
    } catch (_) {}
    _streamSubscription = null;
  }

  @override
  Future<void> cancelAndStartListeningRequest<T>(
      {required Future<T> request,
      required void Function(T data) onDone}) async {
    if (_streamSubscription != null) {
      cancelCurrentRequest();
    }
    _streamSubscription = request.asStream().listen(onDone);
  }

  @override
  Future<void> cancelableFetchData<Result>({
    required void Function()? onLoading,
    required Future<Result> requestApi,
    required void Function(Result? data)? onSuccess,
    required void Function(String? message)? onError,
  }) async {
    if (onLoading != null) {
      onLoading();
    }
    cancelAndStartListeningRequest(
      request: _registerRequest(requestApi),
      onDone: (response) async {
        if (response.hasError()) {
          if (onError != null) {
            onError(response.error?.message);
          }
        } else {
          if (onSuccess != null) {
            onSuccess(response.data);
          }
        }
      },
    );
  }

  Future<Result<T>> _registerRequest<T>(Future<T> requestApi) async {
    return await ServiceUtil.requestApi(requestApi);
  }
}
