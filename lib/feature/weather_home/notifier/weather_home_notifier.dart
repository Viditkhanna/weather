import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather/feature/weather_home/model/weather.dart';
import 'package:weather/feature/weather_home/repository/weather_home_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_home_notifier.freezed.dart';
part 'weather_home_state.dart';

final weatherHomeNotifierProvider =
    StateNotifierProvider.autoDispose<WeatherHomeNotifier, WeatherHomeState>(
      (ref) => WeatherHomeNotifier(
        weatherHomeRepository: ref.watch(weatherHomeRepositoryProvider),
      ).._init(),
    );

class WeatherHomeNotifier extends StateNotifier<WeatherHomeState> {
  final WeatherHomeRepository _weatherHomeRepository;

  WeatherHomeNotifier({required WeatherHomeRepository weatherHomeRepository})
    : _weatherHomeRepository = weatherHomeRepository,
      super(WeatherHomeState());

  Future<void> _init() async => await fetchWeather();

  Future<void> fetchWeather() async {
    try {
      state = state.copyWith(weatherLoadingState: WeatherLoadingStateLoading());

      final weatherReports = await _weatherHomeRepository.getWeather();

      state = state.copyWith(
        weatherLoadingState: WeatherLoadingStateSuccess(
          weatherReports: weatherReports,
        ),
        mainReport: weatherReports.firstOrNull,
      );
    } on Exception catch (e) {
      state = state.copyWith(weatherLoadingState: WeatherLoadingStateError(e));
    }
  }

  void changeTemperatureType() {
    state = state.copyWith(showTempInCelsius: !state.showTempInCelsius);
  }

  void changeIndex(int index) {
    final state = this.state.weatherLoadingState;
    if (state is! WeatherLoadingStateSuccess) {
      return;
    }

    this.state = this.state.copyWith(mainReport: state.weatherReports[index]);
  }
}
