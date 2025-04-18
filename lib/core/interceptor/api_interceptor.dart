import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final apiInterceptorProvider = Provider((ref) => ApiInterceptor());

class ApiInterceptor extends Interceptor {
  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    options.queryParameters['appId'] = 'fba0e3e68a6eba8cfaa7e9d01084bd0d';
    handler.next(options);
  }
}
