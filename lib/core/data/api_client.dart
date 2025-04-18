import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:weather/core/interceptor/api_interceptor.dart';
import 'package:weather/core/util/constant.dart';
import 'package:weather/feature/weather_home/model/weather.dart';

part 'api_client.g.dart';

final apiClientProvider = Provider((ref) {
  final dio = Dio();
  final apiInterceptor = ref.watch(apiInterceptorProvider);

  dio.interceptors.add(apiInterceptor);
  if (kDebugMode) dio.interceptors.add(LogInterceptor(responseBody: false));

  return ApiClient(dio);
});

@RestApi(baseUrl: 'https://api.openweathermap.org')
abstract class ApiClient {
  factory ApiClient(Dio dio) = _ApiClient;

  @GET('/data/2.5/forecast')
  Future<WeatherResponse> getWeather({
    @Query('q') String city = 'Berlin',
    @Query('unit') String unit = 'metric',
    // max responses for one day = 8
    @Query('cnt') int count = Constant.daysCountToDisplay * 8,
  });
}
