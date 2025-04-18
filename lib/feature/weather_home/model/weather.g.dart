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
      list:
          (json['list'] as List<dynamic>)
              .map((e) => WeatherList.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$WeatherResponseToJson(_WeatherResponse instance) =>
    <String, dynamic>{
      'cod': instance.cod,
      'message': instance.message,
      'cnt': instance.cnt,
      'list': instance.list.map((e) => e.toJson()).toList(),
    };

_WeatherList _$WeatherListFromJson(Map<String, dynamic> json) => _WeatherList(
  dt: (json['dt'] as num).toInt(),
  main: Main.fromJson(json['main'] as Map<String, dynamic>),
  weather:
      (json['weather'] as List<dynamic>)
          .map((e) => Weather.fromJson(e as Map<String, dynamic>))
          .toList(),
  wind: Wind.fromJson(json['wind'] as Map<String, dynamic>),
  dateTime: const CustomDateTimeConverter().fromJson(json['dt_txt'] as String),
);

Map<String, dynamic> _$WeatherListToJson(_WeatherList instance) =>
    <String, dynamic>{
      'dt': instance.dt,
      'main': instance.main.toJson(),
      'weather': instance.weather.map((e) => e.toJson()).toList(),
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

_Weather _$WeatherFromJson(Map<String, dynamic> json) => _Weather(
  id: (json['id'] as num).toInt(),
  main: json['main'] as String,
  description: json['description'] as String,
  icon: json['icon'] as String,
);

Map<String, dynamic> _$WeatherToJson(_Weather instance) => <String, dynamic>{
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
