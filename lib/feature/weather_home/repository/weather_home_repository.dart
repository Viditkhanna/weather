import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather/core/data/api_client.dart';
import 'package:weather/feature/weather_home/model/weather.dart';

final weatherHomeRepositoryProvider = Provider.autoDispose((ref) {
  return WeatherHomeRepository(apiClient: ref.watch(apiClientProvider));
});

class WeatherHomeRepository {
  final ApiClient apiClient;

  WeatherHomeRepository({required this.apiClient});

  Future<List<WeatherReport>> getWeather() async {
    final weatherReports = <WeatherReport>[];
    final weatherResponse = await apiClient.getWeather();

    for (var weatherItem in weatherResponse.weatherReports) {
      if (!weatherReports.any(
        (e) => DateUtils.isSameDay(e.dateTime, weatherItem.dateTime),
      )) {
        weatherReports.add(weatherItem);
      }
    }
    return weatherReports;
  }
}
