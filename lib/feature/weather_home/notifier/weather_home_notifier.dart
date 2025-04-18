import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather/feature/weather_home/repository/weather_home_repository.dart';

final weatherHomeNotifierProvider = Provider.autoDispose((ref) {
  return WeatherHomeNotifier(
    weatherHomeRepository: ref.watch(weatherHomeRepositoryProvider),
  ).._init();
});

class WeatherHomeNotifier {
  final WeatherHomeRepository weatherHomeRepository;

  WeatherHomeNotifier({required this.weatherHomeRepository});

  Future<void> _init() async {
    await weatherHomeRepository.getWeather();
  }
}
