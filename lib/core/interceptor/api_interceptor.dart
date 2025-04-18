import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final apiInterceptorProvider = Provider((ref) => ApiInterceptor());

class ApiInterceptor extends Interceptor {
  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    options.baseUrl = 'https://api.openweathermap.org';
    options.queryParameters =
        options.queryParameters..addAll(<String, dynamic>{
          'appId': 'fba0e3e68a6eba8cfaa7e9d01084bd0d',
        });
    handler.next(options);
  }
}
