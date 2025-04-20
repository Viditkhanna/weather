part of 'weather_home_notifier.dart';

@freezed
sealed class WeatherHomeState with _$WeatherHomeState {
  const factory WeatherHomeState({
    @Default(WeatherLoadingStateIdle()) WeatherLoadingState weatherLoadingState,
    @Default(true) bool showTempInCelsius,
  }) = _WeatherHomeState;
}

@freezed
sealed class WeatherLoadingState with _$WeatherLoadingState {
  const factory WeatherLoadingState.idle() = WeatherLoadingStateIdle;
  const factory WeatherLoadingState.loading() = WeatherLoadingStateLoading;
  const factory WeatherLoadingState.success({
    required List<WeatherReport> weatherReports,
  }) = WeatherLoadingStateSuccess;
  const factory WeatherLoadingState.error(Exception? exception) =
      WeatherLoadingStateError;
}
