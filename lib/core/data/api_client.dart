import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:weather/core/interceptor/api_interceptor.dart';

part 'api_client.g.dart';

final apiClientProvider = Provider((ref) {
  final dio = Dio();
  final apiInterceptor = ref.watch(apiInterceptorProvider);

  dio.interceptors
    ..add(apiInterceptor)
    ..add(LogInterceptor(responseBody: false));

  return ApiClient(dio);
});

@RestApi()
abstract class ApiClient {
  factory ApiClient(Dio dio) = _ApiClient;

  @GET('/data/2.5/weather')
  Future getWeather({
    @Query('q') String city = 'Berlin',
    @Query('unit') String unit = 'metric',
  });
}
