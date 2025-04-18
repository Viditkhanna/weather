// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather.freezed.dart';
part 'weather.g.dart';

@freezed
sealed class WeatherResponse with _$WeatherResponse {
  factory WeatherResponse({
    required String cod,
    required int message,
    required int cnt,
    required List<WeatherList> list,
  }) = _WeatherResponse;

  factory WeatherResponse.fromJson(Map<String, dynamic> json) =>
      _$WeatherResponseFromJson(json);
}

@freezed
sealed class WeatherList with _$WeatherList {
  factory WeatherList({
    required int dt,
    required Main main,
    required List<Weather> weather,
    required Wind wind,
    required String dtTxt,
  }) = _WeatherList;

  factory WeatherList.fromJson(Map<String, dynamic> json) =>
      _$WeatherListFromJson(json);
}

@freezed
sealed class Main with _$Main {
  factory Main({
    required double temp,
    required int pressure,
    required int humidity,
  }) = _Main;

  factory Main.fromJson(Map<String, dynamic> json) => _$MainFromJson(json);
}

@freezed
sealed class Weather with _$Weather {
  factory Weather({
    required int id,
    required String main,
    required String description,
    required String icon,
  }) = _Weather;

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);
}

@freezed
sealed class Wind with _$Wind {
  factory Wind({required double speed}) = _Wind;

  factory Wind.fromJson(Map<String, dynamic> json) => _$WindFromJson(json);
}
