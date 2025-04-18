// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather/core/converters/date_time_converter.dart';

part 'weather.freezed.dart';
part 'weather.g.dart';

@freezed
sealed class WeatherResponse with _$WeatherResponse {
  factory WeatherResponse({
    required String cod,
    required int message,
    required int cnt,
    required List<WeatherReport> weatherReports,
  }) = _WeatherResponse;

  factory WeatherResponse.fromJson(Map<String, dynamic> json) =>
      _$WeatherResponseFromJson(json);
}

@freezed
sealed class WeatherReport with _$WeatherReport {
  factory WeatherReport({
    required int dt,
    required Main main,
    required List<WeatherDetail> weatherDetails,
    required Wind wind,
    @CustomDateTimeConverter()
    @JsonKey(name: 'dt_txt')
    required DateTime dateTime,
  }) = _WeatherReport;

  factory WeatherReport.fromJson(Map<String, dynamic> json) =>
      _$WeatherReportFromJson(json);
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
sealed class WeatherDetail with _$WeatherDetail {
  factory WeatherDetail({
    required int id,
    required String main,
    required String description,
    required String icon,
  }) = _WeatherDetail;

  factory WeatherDetail.fromJson(Map<String, dynamic> json) =>
      _$WeatherDetailFromJson(json);
}

@freezed
sealed class Wind with _$Wind {
  factory Wind({required double speed}) = _Wind;

  factory Wind.fromJson(Map<String, dynamic> json) => _$WindFromJson(json);
}
