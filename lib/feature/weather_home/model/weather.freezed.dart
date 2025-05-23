// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Weather {

@JsonKey(name: 'list') List<WeatherReport> get weatherReports;
/// Create a copy of Weather
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeatherCopyWith<Weather> get copyWith => _$WeatherCopyWithImpl<Weather>(this as Weather, _$identity);

  /// Serializes this Weather to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Weather&&const DeepCollectionEquality().equals(other.weatherReports, weatherReports));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(weatherReports));

@override
String toString() {
  return 'Weather(weatherReports: $weatherReports)';
}


}

/// @nodoc
abstract mixin class $WeatherCopyWith<$Res>  {
  factory $WeatherCopyWith(Weather value, $Res Function(Weather) _then) = _$WeatherCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'list') List<WeatherReport> weatherReports
});




}
/// @nodoc
class _$WeatherCopyWithImpl<$Res>
    implements $WeatherCopyWith<$Res> {
  _$WeatherCopyWithImpl(this._self, this._then);

  final Weather _self;
  final $Res Function(Weather) _then;

/// Create a copy of Weather
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? weatherReports = null,}) {
  return _then(_self.copyWith(
weatherReports: null == weatherReports ? _self.weatherReports : weatherReports // ignore: cast_nullable_to_non_nullable
as List<WeatherReport>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Weather implements Weather {
   _Weather({@JsonKey(name: 'list') required final  List<WeatherReport> weatherReports}): _weatherReports = weatherReports;
  factory _Weather.fromJson(Map<String, dynamic> json) => _$WeatherFromJson(json);

 final  List<WeatherReport> _weatherReports;
@override@JsonKey(name: 'list') List<WeatherReport> get weatherReports {
  if (_weatherReports is EqualUnmodifiableListView) return _weatherReports;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_weatherReports);
}


/// Create a copy of Weather
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WeatherCopyWith<_Weather> get copyWith => __$WeatherCopyWithImpl<_Weather>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WeatherToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Weather&&const DeepCollectionEquality().equals(other._weatherReports, _weatherReports));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_weatherReports));

@override
String toString() {
  return 'Weather(weatherReports: $weatherReports)';
}


}

/// @nodoc
abstract mixin class _$WeatherCopyWith<$Res> implements $WeatherCopyWith<$Res> {
  factory _$WeatherCopyWith(_Weather value, $Res Function(_Weather) _then) = __$WeatherCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'list') List<WeatherReport> weatherReports
});




}
/// @nodoc
class __$WeatherCopyWithImpl<$Res>
    implements _$WeatherCopyWith<$Res> {
  __$WeatherCopyWithImpl(this._self, this._then);

  final _Weather _self;
  final $Res Function(_Weather) _then;

/// Create a copy of Weather
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? weatherReports = null,}) {
  return _then(_Weather(
weatherReports: null == weatherReports ? _self._weatherReports : weatherReports // ignore: cast_nullable_to_non_nullable
as List<WeatherReport>,
  ));
}


}


/// @nodoc
mixin _$WeatherReport {

 Main get main;@JsonKey(name: 'weather') List<WeatherDetail> get weatherDetails; Wind get wind;@CustomDateTimeConverter()@JsonKey(name: 'dt_txt') DateTime get dateTime;
/// Create a copy of WeatherReport
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeatherReportCopyWith<WeatherReport> get copyWith => _$WeatherReportCopyWithImpl<WeatherReport>(this as WeatherReport, _$identity);

  /// Serializes this WeatherReport to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeatherReport&&(identical(other.main, main) || other.main == main)&&const DeepCollectionEquality().equals(other.weatherDetails, weatherDetails)&&(identical(other.wind, wind) || other.wind == wind)&&(identical(other.dateTime, dateTime) || other.dateTime == dateTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,main,const DeepCollectionEquality().hash(weatherDetails),wind,dateTime);

@override
String toString() {
  return 'WeatherReport(main: $main, weatherDetails: $weatherDetails, wind: $wind, dateTime: $dateTime)';
}


}

/// @nodoc
abstract mixin class $WeatherReportCopyWith<$Res>  {
  factory $WeatherReportCopyWith(WeatherReport value, $Res Function(WeatherReport) _then) = _$WeatherReportCopyWithImpl;
@useResult
$Res call({
 Main main,@JsonKey(name: 'weather') List<WeatherDetail> weatherDetails, Wind wind,@CustomDateTimeConverter()@JsonKey(name: 'dt_txt') DateTime dateTime
});


$MainCopyWith<$Res> get main;$WindCopyWith<$Res> get wind;

}
/// @nodoc
class _$WeatherReportCopyWithImpl<$Res>
    implements $WeatherReportCopyWith<$Res> {
  _$WeatherReportCopyWithImpl(this._self, this._then);

  final WeatherReport _self;
  final $Res Function(WeatherReport) _then;

/// Create a copy of WeatherReport
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? main = null,Object? weatherDetails = null,Object? wind = null,Object? dateTime = null,}) {
  return _then(_self.copyWith(
main: null == main ? _self.main : main // ignore: cast_nullable_to_non_nullable
as Main,weatherDetails: null == weatherDetails ? _self.weatherDetails : weatherDetails // ignore: cast_nullable_to_non_nullable
as List<WeatherDetail>,wind: null == wind ? _self.wind : wind // ignore: cast_nullable_to_non_nullable
as Wind,dateTime: null == dateTime ? _self.dateTime : dateTime // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}
/// Create a copy of WeatherReport
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MainCopyWith<$Res> get main {
  
  return $MainCopyWith<$Res>(_self.main, (value) {
    return _then(_self.copyWith(main: value));
  });
}/// Create a copy of WeatherReport
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WindCopyWith<$Res> get wind {
  
  return $WindCopyWith<$Res>(_self.wind, (value) {
    return _then(_self.copyWith(wind: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _WeatherReport implements WeatherReport {
   _WeatherReport({required this.main, @JsonKey(name: 'weather') required final  List<WeatherDetail> weatherDetails, required this.wind, @CustomDateTimeConverter()@JsonKey(name: 'dt_txt') required this.dateTime}): _weatherDetails = weatherDetails;
  factory _WeatherReport.fromJson(Map<String, dynamic> json) => _$WeatherReportFromJson(json);

@override final  Main main;
 final  List<WeatherDetail> _weatherDetails;
@override@JsonKey(name: 'weather') List<WeatherDetail> get weatherDetails {
  if (_weatherDetails is EqualUnmodifiableListView) return _weatherDetails;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_weatherDetails);
}

@override final  Wind wind;
@override@CustomDateTimeConverter()@JsonKey(name: 'dt_txt') final  DateTime dateTime;

/// Create a copy of WeatherReport
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WeatherReportCopyWith<_WeatherReport> get copyWith => __$WeatherReportCopyWithImpl<_WeatherReport>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WeatherReportToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WeatherReport&&(identical(other.main, main) || other.main == main)&&const DeepCollectionEquality().equals(other._weatherDetails, _weatherDetails)&&(identical(other.wind, wind) || other.wind == wind)&&(identical(other.dateTime, dateTime) || other.dateTime == dateTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,main,const DeepCollectionEquality().hash(_weatherDetails),wind,dateTime);

@override
String toString() {
  return 'WeatherReport(main: $main, weatherDetails: $weatherDetails, wind: $wind, dateTime: $dateTime)';
}


}

/// @nodoc
abstract mixin class _$WeatherReportCopyWith<$Res> implements $WeatherReportCopyWith<$Res> {
  factory _$WeatherReportCopyWith(_WeatherReport value, $Res Function(_WeatherReport) _then) = __$WeatherReportCopyWithImpl;
@override @useResult
$Res call({
 Main main,@JsonKey(name: 'weather') List<WeatherDetail> weatherDetails, Wind wind,@CustomDateTimeConverter()@JsonKey(name: 'dt_txt') DateTime dateTime
});


@override $MainCopyWith<$Res> get main;@override $WindCopyWith<$Res> get wind;

}
/// @nodoc
class __$WeatherReportCopyWithImpl<$Res>
    implements _$WeatherReportCopyWith<$Res> {
  __$WeatherReportCopyWithImpl(this._self, this._then);

  final _WeatherReport _self;
  final $Res Function(_WeatherReport) _then;

/// Create a copy of WeatherReport
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? main = null,Object? weatherDetails = null,Object? wind = null,Object? dateTime = null,}) {
  return _then(_WeatherReport(
main: null == main ? _self.main : main // ignore: cast_nullable_to_non_nullable
as Main,weatherDetails: null == weatherDetails ? _self._weatherDetails : weatherDetails // ignore: cast_nullable_to_non_nullable
as List<WeatherDetail>,wind: null == wind ? _self.wind : wind // ignore: cast_nullable_to_non_nullable
as Wind,dateTime: null == dateTime ? _self.dateTime : dateTime // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

/// Create a copy of WeatherReport
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MainCopyWith<$Res> get main {
  
  return $MainCopyWith<$Res>(_self.main, (value) {
    return _then(_self.copyWith(main: value));
  });
}/// Create a copy of WeatherReport
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WindCopyWith<$Res> get wind {
  
  return $WindCopyWith<$Res>(_self.wind, (value) {
    return _then(_self.copyWith(wind: value));
  });
}
}


/// @nodoc
mixin _$Main {

 double get tempInFahrenheit;@JsonKey(name: 'temp') double get tempInCelcius; int get pressure; int get humidity;
/// Create a copy of Main
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MainCopyWith<Main> get copyWith => _$MainCopyWithImpl<Main>(this as Main, _$identity);

  /// Serializes this Main to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Main&&(identical(other.tempInFahrenheit, tempInFahrenheit) || other.tempInFahrenheit == tempInFahrenheit)&&(identical(other.tempInCelcius, tempInCelcius) || other.tempInCelcius == tempInCelcius)&&(identical(other.pressure, pressure) || other.pressure == pressure)&&(identical(other.humidity, humidity) || other.humidity == humidity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tempInFahrenheit,tempInCelcius,pressure,humidity);

@override
String toString() {
  return 'Main(tempInFahrenheit: $tempInFahrenheit, tempInCelcius: $tempInCelcius, pressure: $pressure, humidity: $humidity)';
}


}

/// @nodoc
abstract mixin class $MainCopyWith<$Res>  {
  factory $MainCopyWith(Main value, $Res Function(Main) _then) = _$MainCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'temp') double tempInCelcius, int pressure, int humidity
});




}
/// @nodoc
class _$MainCopyWithImpl<$Res>
    implements $MainCopyWith<$Res> {
  _$MainCopyWithImpl(this._self, this._then);

  final Main _self;
  final $Res Function(Main) _then;

/// Create a copy of Main
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tempInCelcius = null,Object? pressure = null,Object? humidity = null,}) {
  return _then(_self.copyWith(
tempInCelcius: null == tempInCelcius ? _self.tempInCelcius : tempInCelcius // ignore: cast_nullable_to_non_nullable
as double,pressure: null == pressure ? _self.pressure : pressure // ignore: cast_nullable_to_non_nullable
as int,humidity: null == humidity ? _self.humidity : humidity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Main extends Main {
   _Main({@JsonKey(name: 'temp') required this.tempInCelcius, required this.pressure, required this.humidity}): super._();
  factory _Main.fromJson(Map<String, dynamic> json) => _$MainFromJson(json);

@override@JsonKey(name: 'temp') final  double tempInCelcius;
@override final  int pressure;
@override final  int humidity;

/// Create a copy of Main
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MainCopyWith<_Main> get copyWith => __$MainCopyWithImpl<_Main>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MainToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Main&&(identical(other.tempInCelcius, tempInCelcius) || other.tempInCelcius == tempInCelcius)&&(identical(other.pressure, pressure) || other.pressure == pressure)&&(identical(other.humidity, humidity) || other.humidity == humidity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tempInCelcius,pressure,humidity);

@override
String toString() {
  return 'Main(tempInCelcius: $tempInCelcius, pressure: $pressure, humidity: $humidity)';
}


}

/// @nodoc
abstract mixin class _$MainCopyWith<$Res> implements $MainCopyWith<$Res> {
  factory _$MainCopyWith(_Main value, $Res Function(_Main) _then) = __$MainCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'temp') double tempInCelcius, int pressure, int humidity
});




}
/// @nodoc
class __$MainCopyWithImpl<$Res>
    implements _$MainCopyWith<$Res> {
  __$MainCopyWithImpl(this._self, this._then);

  final _Main _self;
  final $Res Function(_Main) _then;

/// Create a copy of Main
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tempInCelcius = null,Object? pressure = null,Object? humidity = null,}) {
  return _then(_Main(
tempInCelcius: null == tempInCelcius ? _self.tempInCelcius : tempInCelcius // ignore: cast_nullable_to_non_nullable
as double,pressure: null == pressure ? _self.pressure : pressure // ignore: cast_nullable_to_non_nullable
as int,humidity: null == humidity ? _self.humidity : humidity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$WeatherDetail {

 int get id; String get main; String get description; String get icon;
/// Create a copy of WeatherDetail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeatherDetailCopyWith<WeatherDetail> get copyWith => _$WeatherDetailCopyWithImpl<WeatherDetail>(this as WeatherDetail, _$identity);

  /// Serializes this WeatherDetail to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeatherDetail&&(identical(other.id, id) || other.id == id)&&(identical(other.main, main) || other.main == main)&&(identical(other.description, description) || other.description == description)&&(identical(other.icon, icon) || other.icon == icon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,main,description,icon);

@override
String toString() {
  return 'WeatherDetail(id: $id, main: $main, description: $description, icon: $icon)';
}


}

/// @nodoc
abstract mixin class $WeatherDetailCopyWith<$Res>  {
  factory $WeatherDetailCopyWith(WeatherDetail value, $Res Function(WeatherDetail) _then) = _$WeatherDetailCopyWithImpl;
@useResult
$Res call({
 int id, String main, String description, String icon
});




}
/// @nodoc
class _$WeatherDetailCopyWithImpl<$Res>
    implements $WeatherDetailCopyWith<$Res> {
  _$WeatherDetailCopyWithImpl(this._self, this._then);

  final WeatherDetail _self;
  final $Res Function(WeatherDetail) _then;

/// Create a copy of WeatherDetail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? main = null,Object? description = null,Object? icon = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,main: null == main ? _self.main : main // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _WeatherDetail implements WeatherDetail {
   _WeatherDetail({required this.id, required this.main, required this.description, required this.icon});
  factory _WeatherDetail.fromJson(Map<String, dynamic> json) => _$WeatherDetailFromJson(json);

@override final  int id;
@override final  String main;
@override final  String description;
@override final  String icon;

/// Create a copy of WeatherDetail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WeatherDetailCopyWith<_WeatherDetail> get copyWith => __$WeatherDetailCopyWithImpl<_WeatherDetail>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WeatherDetailToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WeatherDetail&&(identical(other.id, id) || other.id == id)&&(identical(other.main, main) || other.main == main)&&(identical(other.description, description) || other.description == description)&&(identical(other.icon, icon) || other.icon == icon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,main,description,icon);

@override
String toString() {
  return 'WeatherDetail(id: $id, main: $main, description: $description, icon: $icon)';
}


}

/// @nodoc
abstract mixin class _$WeatherDetailCopyWith<$Res> implements $WeatherDetailCopyWith<$Res> {
  factory _$WeatherDetailCopyWith(_WeatherDetail value, $Res Function(_WeatherDetail) _then) = __$WeatherDetailCopyWithImpl;
@override @useResult
$Res call({
 int id, String main, String description, String icon
});




}
/// @nodoc
class __$WeatherDetailCopyWithImpl<$Res>
    implements _$WeatherDetailCopyWith<$Res> {
  __$WeatherDetailCopyWithImpl(this._self, this._then);

  final _WeatherDetail _self;
  final $Res Function(_WeatherDetail) _then;

/// Create a copy of WeatherDetail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? main = null,Object? description = null,Object? icon = null,}) {
  return _then(_WeatherDetail(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,main: null == main ? _self.main : main // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$Wind {

 double get speed;
/// Create a copy of Wind
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WindCopyWith<Wind> get copyWith => _$WindCopyWithImpl<Wind>(this as Wind, _$identity);

  /// Serializes this Wind to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Wind&&(identical(other.speed, speed) || other.speed == speed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,speed);

@override
String toString() {
  return 'Wind(speed: $speed)';
}


}

/// @nodoc
abstract mixin class $WindCopyWith<$Res>  {
  factory $WindCopyWith(Wind value, $Res Function(Wind) _then) = _$WindCopyWithImpl;
@useResult
$Res call({
 double speed
});




}
/// @nodoc
class _$WindCopyWithImpl<$Res>
    implements $WindCopyWith<$Res> {
  _$WindCopyWithImpl(this._self, this._then);

  final Wind _self;
  final $Res Function(Wind) _then;

/// Create a copy of Wind
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? speed = null,}) {
  return _then(_self.copyWith(
speed: null == speed ? _self.speed : speed // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Wind implements Wind {
   _Wind({required this.speed});
  factory _Wind.fromJson(Map<String, dynamic> json) => _$WindFromJson(json);

@override final  double speed;

/// Create a copy of Wind
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WindCopyWith<_Wind> get copyWith => __$WindCopyWithImpl<_Wind>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WindToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Wind&&(identical(other.speed, speed) || other.speed == speed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,speed);

@override
String toString() {
  return 'Wind(speed: $speed)';
}


}

/// @nodoc
abstract mixin class _$WindCopyWith<$Res> implements $WindCopyWith<$Res> {
  factory _$WindCopyWith(_Wind value, $Res Function(_Wind) _then) = __$WindCopyWithImpl;
@override @useResult
$Res call({
 double speed
});




}
/// @nodoc
class __$WindCopyWithImpl<$Res>
    implements _$WindCopyWith<$Res> {
  __$WindCopyWithImpl(this._self, this._then);

  final _Wind _self;
  final $Res Function(_Wind) _then;

/// Create a copy of Wind
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? speed = null,}) {
  return _then(_Wind(
speed: null == speed ? _self.speed : speed // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
