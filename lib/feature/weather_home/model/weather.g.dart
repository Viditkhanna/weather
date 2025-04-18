// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WeatherResponse _$WeatherResponseFromJson(Map<String, dynamic> json) =>
    _WeatherResponse(
      cod: json['cod'] as String,
      message: (json['message'] as num).toInt(),
      cnt: (json['cnt'] as num).toInt(),
      weatherReports:
          (json['weather_reports'] as List<dynamic>)
              .map((e) => WeatherReport.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$WeatherResponseToJson(
  _WeatherResponse instance,
) => <String, dynamic>{
  'cod': instance.cod,
  'message': instance.message,
  'cnt': instance.cnt,
  'weather_reports': instance.weatherReports.map((e) => e.toJson()).toList(),
};

_WeatherReport _$WeatherReportFromJson(Map<String, dynamic> json) =>
    _WeatherReport(
      dt: (json['dt'] as num).toInt(),
      main: Main.fromJson(json['main'] as Map<String, dynamic>),
      weatherDetails:
          (json['weather_details'] as List<dynamic>)
              .map((e) => WeatherDetail.fromJson(e as Map<String, dynamic>))
              .toList(),
      wind: Wind.fromJson(json['wind'] as Map<String, dynamic>),
      dateTime: const CustomDateTimeConverter().fromJson(
        json['dt_txt'] as String,
      ),
    );

Map<String, dynamic> _$WeatherReportToJson(
  _WeatherReport instance,
) => <String, dynamic>{
  'dt': instance.dt,
  'main': instance.main.toJson(),
  'weather_details': instance.weatherDetails.map((e) => e.toJson()).toList(),
  'wind': instance.wind.toJson(),
  'dt_txt': const CustomDateTimeConverter().toJson(instance.dateTime),
};

_Main _$MainFromJson(Map<String, dynamic> json) => _Main(
  temp: (json['temp'] as num).toDouble(),
  pressure: (json['pressure'] as num).toInt(),
  humidity: (json['humidity'] as num).toInt(),
);

Map<String, dynamic> _$MainToJson(_Main instance) => <String, dynamic>{
  'temp': instance.temp,
  'pressure': instance.pressure,
  'humidity': instance.humidity,
};

_WeatherDetail _$WeatherDetailFromJson(Map<String, dynamic> json) =>
    _WeatherDetail(
      id: (json['id'] as num).toInt(),
      main: json['main'] as String,
      description: json['description'] as String,
      icon: json['icon'] as String,
    );

Map<String, dynamic> _$WeatherDetailToJson(_WeatherDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'main': instance.main,
      'description': instance.description,
      'icon': instance.icon,
    };

_Wind _$WindFromJson(Map<String, dynamic> json) =>
    _Wind(speed: (json['speed'] as num).toDouble());

Map<String, dynamic> _$WindToJson(_Wind instance) => <String, dynamic>{
  'speed': instance.speed,
};
