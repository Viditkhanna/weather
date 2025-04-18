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
mixin _$WeatherResponse {

 String get cod; int get message; int get cnt; List<WeatherList> get list;
/// Create a copy of WeatherResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeatherResponseCopyWith<WeatherResponse> get copyWith => _$WeatherResponseCopyWithImpl<WeatherResponse>(this as WeatherResponse, _$identity);

  /// Serializes this WeatherResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeatherResponse&&(identical(other.cod, cod) || other.cod == cod)&&(identical(other.message, message) || other.message == message)&&(identical(other.cnt, cnt) || other.cnt == cnt)&&const DeepCollectionEquality().equals(other.list, list));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cod,message,cnt,const DeepCollectionEquality().hash(list));

@override
String toString() {
  return 'WeatherResponse(cod: $cod, message: $message, cnt: $cnt, list: $list)';
}


}

/// @nodoc
abstract mixin class $WeatherResponseCopyWith<$Res>  {
  factory $WeatherResponseCopyWith(WeatherResponse value, $Res Function(WeatherResponse) _then) = _$WeatherResponseCopyWithImpl;
@useResult
$Res call({
 String cod, int message, int cnt, List<WeatherList> list
});




}
/// @nodoc
class _$WeatherResponseCopyWithImpl<$Res>
    implements $WeatherResponseCopyWith<$Res> {
  _$WeatherResponseCopyWithImpl(this._self, this._then);

  final WeatherResponse _self;
  final $Res Function(WeatherResponse) _then;

/// Create a copy of WeatherResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cod = null,Object? message = null,Object? cnt = null,Object? list = null,}) {
  return _then(_self.copyWith(
cod: null == cod ? _self.cod : cod // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as int,cnt: null == cnt ? _self.cnt : cnt // ignore: cast_nullable_to_non_nullable
as int,list: null == list ? _self.list : list // ignore: cast_nullable_to_non_nullable
as List<WeatherList>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _WeatherResponse implements WeatherResponse {
   _WeatherResponse({required this.cod, required this.message, required this.cnt, required final  List<WeatherList> list}): _list = list;
  factory _WeatherResponse.fromJson(Map<String, dynamic> json) => _$WeatherResponseFromJson(json);

@override final  String cod;
@override final  int message;
@override final  int cnt;
 final  List<WeatherList> _list;
@override List<WeatherList> get list {
  if (_list is EqualUnmodifiableListView) return _list;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_list);
}


/// Create a copy of WeatherResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WeatherResponseCopyWith<_WeatherResponse> get copyWith => __$WeatherResponseCopyWithImpl<_WeatherResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WeatherResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WeatherResponse&&(identical(other.cod, cod) || other.cod == cod)&&(identical(other.message, message) || other.message == message)&&(identical(other.cnt, cnt) || other.cnt == cnt)&&const DeepCollectionEquality().equals(other._list, _list));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cod,message,cnt,const DeepCollectionEquality().hash(_list));

@override
String toString() {
  return 'WeatherResponse(cod: $cod, message: $message, cnt: $cnt, list: $list)';
}


}

/// @nodoc
abstract mixin class _$WeatherResponseCopyWith<$Res> implements $WeatherResponseCopyWith<$Res> {
  factory _$WeatherResponseCopyWith(_WeatherResponse value, $Res Function(_WeatherResponse) _then) = __$WeatherResponseCopyWithImpl;
@override @useResult
$Res call({
 String cod, int message, int cnt, List<WeatherList> list
});




}
/// @nodoc
class __$WeatherResponseCopyWithImpl<$Res>
    implements _$WeatherResponseCopyWith<$Res> {
  __$WeatherResponseCopyWithImpl(this._self, this._then);

  final _WeatherResponse _self;
  final $Res Function(_WeatherResponse) _then;

/// Create a copy of WeatherResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cod = null,Object? message = null,Object? cnt = null,Object? list = null,}) {
  return _then(_WeatherResponse(
cod: null == cod ? _self.cod : cod // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as int,cnt: null == cnt ? _self.cnt : cnt // ignore: cast_nullable_to_non_nullable
as int,list: null == list ? _self._list : list // ignore: cast_nullable_to_non_nullable
as List<WeatherList>,
  ));
}


}


/// @nodoc
mixin _$WeatherList {

 int get dt; Main get main; List<Weather> get weather; Wind get wind;@JsonKey(name: 'dt_txt') DateTime get dateTime;
/// Create a copy of WeatherList
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeatherListCopyWith<WeatherList> get copyWith => _$WeatherListCopyWithImpl<WeatherList>(this as WeatherList, _$identity);

  /// Serializes this WeatherList to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeatherList&&(identical(other.dt, dt) || other.dt == dt)&&(identical(other.main, main) || other.main == main)&&const DeepCollectionEquality().equals(other.weather, weather)&&(identical(other.wind, wind) || other.wind == wind)&&(identical(other.dateTime, dateTime) || other.dateTime == dateTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dt,main,const DeepCollectionEquality().hash(weather),wind,dateTime);

@override
String toString() {
  return 'WeatherList(dt: $dt, main: $main, weather: $weather, wind: $wind, dateTime: $dateTime)';
}


}

/// @nodoc
abstract mixin class $WeatherListCopyWith<$Res>  {
  factory $WeatherListCopyWith(WeatherList value, $Res Function(WeatherList) _then) = _$WeatherListCopyWithImpl;
@useResult
$Res call({
 int dt, Main main, List<Weather> weather, Wind wind,@JsonKey(name: 'dt_txt') DateTime dateTime
});


$MainCopyWith<$Res> get main;$WindCopyWith<$Res> get wind;

}
/// @nodoc
class _$WeatherListCopyWithImpl<$Res>
    implements $WeatherListCopyWith<$Res> {
  _$WeatherListCopyWithImpl(this._self, this._then);

  final WeatherList _self;
  final $Res Function(WeatherList) _then;

/// Create a copy of WeatherList
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? dt = null,Object? main = null,Object? weather = null,Object? wind = null,Object? dateTime = null,}) {
  return _then(_self.copyWith(
dt: null == dt ? _self.dt : dt // ignore: cast_nullable_to_non_nullable
as int,main: null == main ? _self.main : main // ignore: cast_nullable_to_non_nullable
as Main,weather: null == weather ? _self.weather : weather // ignore: cast_nullable_to_non_nullable
as List<Weather>,wind: null == wind ? _self.wind : wind // ignore: cast_nullable_to_non_nullable
as Wind,dateTime: null == dateTime ? _self.dateTime : dateTime // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}
/// Create a copy of WeatherList
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MainCopyWith<$Res> get main {
  
  return $MainCopyWith<$Res>(_self.main, (value) {
    return _then(_self.copyWith(main: value));
  });
}/// Create a copy of WeatherList
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

class _WeatherList implements WeatherList {
   _WeatherList({required this.dt, required this.main, required final  List<Weather> weather, required this.wind, @JsonKey(name: 'dt_txt') required this.dateTime}): _weather = weather;
  factory _WeatherList.fromJson(Map<String, dynamic> json) => _$WeatherListFromJson(json);

@override final  int dt;
@override final  Main main;
 final  List<Weather> _weather;
@override List<Weather> get weather {
  if (_weather is EqualUnmodifiableListView) return _weather;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_weather);
}

@override final  Wind wind;
@override@JsonKey(name: 'dt_txt') final  DateTime dateTime;

/// Create a copy of WeatherList
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WeatherListCopyWith<_WeatherList> get copyWith => __$WeatherListCopyWithImpl<_WeatherList>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WeatherListToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WeatherList&&(identical(other.dt, dt) || other.dt == dt)&&(identical(other.main, main) || other.main == main)&&const DeepCollectionEquality().equals(other._weather, _weather)&&(identical(other.wind, wind) || other.wind == wind)&&(identical(other.dateTime, dateTime) || other.dateTime == dateTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dt,main,const DeepCollectionEquality().hash(_weather),wind,dateTime);

@override
String toString() {
  return 'WeatherList(dt: $dt, main: $main, weather: $weather, wind: $wind, dateTime: $dateTime)';
}


}

/// @nodoc
abstract mixin class _$WeatherListCopyWith<$Res> implements $WeatherListCopyWith<$Res> {
  factory _$WeatherListCopyWith(_WeatherList value, $Res Function(_WeatherList) _then) = __$WeatherListCopyWithImpl;
@override @useResult
$Res call({
 int dt, Main main, List<Weather> weather, Wind wind,@JsonKey(name: 'dt_txt') DateTime dateTime
});


@override $MainCopyWith<$Res> get main;@override $WindCopyWith<$Res> get wind;

}
/// @nodoc
class __$WeatherListCopyWithImpl<$Res>
    implements _$WeatherListCopyWith<$Res> {
  __$WeatherListCopyWithImpl(this._self, this._then);

  final _WeatherList _self;
  final $Res Function(_WeatherList) _then;

/// Create a copy of WeatherList
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? dt = null,Object? main = null,Object? weather = null,Object? wind = null,Object? dateTime = null,}) {
  return _then(_WeatherList(
dt: null == dt ? _self.dt : dt // ignore: cast_nullable_to_non_nullable
as int,main: null == main ? _self.main : main // ignore: cast_nullable_to_non_nullable
as Main,weather: null == weather ? _self._weather : weather // ignore: cast_nullable_to_non_nullable
as List<Weather>,wind: null == wind ? _self.wind : wind // ignore: cast_nullable_to_non_nullable
as Wind,dateTime: null == dateTime ? _self.dateTime : dateTime // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

/// Create a copy of WeatherList
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MainCopyWith<$Res> get main {
  
  return $MainCopyWith<$Res>(_self.main, (value) {
    return _then(_self.copyWith(main: value));
  });
}/// Create a copy of WeatherList
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

 double get temp; int get pressure; int get humidity;
/// Create a copy of Main
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MainCopyWith<Main> get copyWith => _$MainCopyWithImpl<Main>(this as Main, _$identity);

  /// Serializes this Main to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Main&&(identical(other.temp, temp) || other.temp == temp)&&(identical(other.pressure, pressure) || other.pressure == pressure)&&(identical(other.humidity, humidity) || other.humidity == humidity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,temp,pressure,humidity);

@override
String toString() {
  return 'Main(temp: $temp, pressure: $pressure, humidity: $humidity)';
}


}

/// @nodoc
abstract mixin class $MainCopyWith<$Res>  {
  factory $MainCopyWith(Main value, $Res Function(Main) _then) = _$MainCopyWithImpl;
@useResult
$Res call({
 double temp, int pressure, int humidity
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
@pragma('vm:prefer-inline') @override $Res call({Object? temp = null,Object? pressure = null,Object? humidity = null,}) {
  return _then(_self.copyWith(
temp: null == temp ? _self.temp : temp // ignore: cast_nullable_to_non_nullable
as double,pressure: null == pressure ? _self.pressure : pressure // ignore: cast_nullable_to_non_nullable
as int,humidity: null == humidity ? _self.humidity : humidity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Main implements Main {
   _Main({required this.temp, required this.pressure, required this.humidity});
  factory _Main.fromJson(Map<String, dynamic> json) => _$MainFromJson(json);

@override final  double temp;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Main&&(identical(other.temp, temp) || other.temp == temp)&&(identical(other.pressure, pressure) || other.pressure == pressure)&&(identical(other.humidity, humidity) || other.humidity == humidity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,temp,pressure,humidity);

@override
String toString() {
  return 'Main(temp: $temp, pressure: $pressure, humidity: $humidity)';
}


}

/// @nodoc
abstract mixin class _$MainCopyWith<$Res> implements $MainCopyWith<$Res> {
  factory _$MainCopyWith(_Main value, $Res Function(_Main) _then) = __$MainCopyWithImpl;
@override @useResult
$Res call({
 double temp, int pressure, int humidity
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
@override @pragma('vm:prefer-inline') $Res call({Object? temp = null,Object? pressure = null,Object? humidity = null,}) {
  return _then(_Main(
temp: null == temp ? _self.temp : temp // ignore: cast_nullable_to_non_nullable
as double,pressure: null == pressure ? _self.pressure : pressure // ignore: cast_nullable_to_non_nullable
as int,humidity: null == humidity ? _self.humidity : humidity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$Weather {

 int get id; String get main; String get description; String get icon;
/// Create a copy of Weather
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeatherCopyWith<Weather> get copyWith => _$WeatherCopyWithImpl<Weather>(this as Weather, _$identity);

  /// Serializes this Weather to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Weather&&(identical(other.id, id) || other.id == id)&&(identical(other.main, main) || other.main == main)&&(identical(other.description, description) || other.description == description)&&(identical(other.icon, icon) || other.icon == icon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,main,description,icon);

@override
String toString() {
  return 'Weather(id: $id, main: $main, description: $description, icon: $icon)';
}


}

/// @nodoc
abstract mixin class $WeatherCopyWith<$Res>  {
  factory $WeatherCopyWith(Weather value, $Res Function(Weather) _then) = _$WeatherCopyWithImpl;
@useResult
$Res call({
 int id, String main, String description, String icon
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

class _Weather implements Weather {
   _Weather({required this.id, required this.main, required this.description, required this.icon});
  factory _Weather.fromJson(Map<String, dynamic> json) => _$WeatherFromJson(json);

@override final  int id;
@override final  String main;
@override final  String description;
@override final  String icon;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Weather&&(identical(other.id, id) || other.id == id)&&(identical(other.main, main) || other.main == main)&&(identical(other.description, description) || other.description == description)&&(identical(other.icon, icon) || other.icon == icon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,main,description,icon);

@override
String toString() {
  return 'Weather(id: $id, main: $main, description: $description, icon: $icon)';
}


}

/// @nodoc
abstract mixin class _$WeatherCopyWith<$Res> implements $WeatherCopyWith<$Res> {
  factory _$WeatherCopyWith(_Weather value, $Res Function(_Weather) _then) = __$WeatherCopyWithImpl;
@override @useResult
$Res call({
 int id, String main, String description, String icon
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? main = null,Object? description = null,Object? icon = null,}) {
  return _then(_Weather(
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
