import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather/feature/weather_home/model/weather.dart';
import 'package:weather/feature/weather_home/repository/weather_home_repository.dart';

final weatherHomeNotifierProvider = Provider.autoDispose((ref) {
  return WeatherHomeNotifier(
    weatherHomeRepository: ref.watch(weatherHomeRepositoryProvider),
  ).._init();
});

class WeatherHomeNotifier {
  final WeatherHomeRepository _weatherHomeRepository;

  WeatherHomeNotifier({required WeatherHomeRepository weatherHomeRepository})
    : _weatherHomeRepository = weatherHomeRepository;

  Future<List<WeatherReport>> _init() async {
    final weatherReports = await _weatherHomeRepository.getWeather();
    return weatherReports;
  }
}
