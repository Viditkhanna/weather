import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather/feature/weather_home/model/weather.dart';
import 'package:weather/feature/weather_home/repository/weather_home_repository.dart';

final weatherHomeNotifierProvider = Provider.autoDispose((ref) {
  return WeatherHomeNotifier(
    weatherHomeRepository: ref.watch(weatherHomeRepositoryProvider),
  ).._init();
});

class WeatherHomeNotifier {
  final WeatherHomeRepository weatherHomeRepository;

  WeatherHomeNotifier({required this.weatherHomeRepository});

  Future<List<WeatherList>> _init() async {
    final weatherResponse = await weatherHomeRepository.getWeather();
    return weatherResponse;
  }
}
