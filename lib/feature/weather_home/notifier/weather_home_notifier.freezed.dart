// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_home_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WeatherHomeState {

 WeatherLoadingState get weatherLoadingState; bool get showTempInCelsius;
/// Create a copy of WeatherHomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeatherHomeStateCopyWith<WeatherHomeState> get copyWith => _$WeatherHomeStateCopyWithImpl<WeatherHomeState>(this as WeatherHomeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeatherHomeState&&(identical(other.weatherLoadingState, weatherLoadingState) || other.weatherLoadingState == weatherLoadingState)&&(identical(other.showTempInCelsius, showTempInCelsius) || other.showTempInCelsius == showTempInCelsius));
}


@override
int get hashCode => Object.hash(runtimeType,weatherLoadingState,showTempInCelsius);

@override
String toString() {
  return 'WeatherHomeState(weatherLoadingState: $weatherLoadingState, showTempInCelsius: $showTempInCelsius)';
}


}

/// @nodoc
abstract mixin class $WeatherHomeStateCopyWith<$Res>  {
  factory $WeatherHomeStateCopyWith(WeatherHomeState value, $Res Function(WeatherHomeState) _then) = _$WeatherHomeStateCopyWithImpl;
@useResult
$Res call({
 WeatherLoadingState weatherLoadingState, bool showTempInCelsius
});


$WeatherLoadingStateCopyWith<$Res> get weatherLoadingState;

}
/// @nodoc
class _$WeatherHomeStateCopyWithImpl<$Res>
    implements $WeatherHomeStateCopyWith<$Res> {
  _$WeatherHomeStateCopyWithImpl(this._self, this._then);

  final WeatherHomeState _self;
  final $Res Function(WeatherHomeState) _then;

/// Create a copy of WeatherHomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? weatherLoadingState = null,Object? showTempInCelsius = null,}) {
  return _then(_self.copyWith(
weatherLoadingState: null == weatherLoadingState ? _self.weatherLoadingState : weatherLoadingState // ignore: cast_nullable_to_non_nullable
as WeatherLoadingState,showTempInCelsius: null == showTempInCelsius ? _self.showTempInCelsius : showTempInCelsius // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of WeatherHomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WeatherLoadingStateCopyWith<$Res> get weatherLoadingState {
  
  return $WeatherLoadingStateCopyWith<$Res>(_self.weatherLoadingState, (value) {
    return _then(_self.copyWith(weatherLoadingState: value));
  });
}
}


/// @nodoc


class _WeatherHomeState implements WeatherHomeState {
  const _WeatherHomeState({this.weatherLoadingState = const WeatherLoadingStateIdle(), this.showTempInCelsius = true});
  

@override@JsonKey() final  WeatherLoadingState weatherLoadingState;
@override@JsonKey() final  bool showTempInCelsius;

/// Create a copy of WeatherHomeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WeatherHomeStateCopyWith<_WeatherHomeState> get copyWith => __$WeatherHomeStateCopyWithImpl<_WeatherHomeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WeatherHomeState&&(identical(other.weatherLoadingState, weatherLoadingState) || other.weatherLoadingState == weatherLoadingState)&&(identical(other.showTempInCelsius, showTempInCelsius) || other.showTempInCelsius == showTempInCelsius));
}


@override
int get hashCode => Object.hash(runtimeType,weatherLoadingState,showTempInCelsius);

@override
String toString() {
  return 'WeatherHomeState(weatherLoadingState: $weatherLoadingState, showTempInCelsius: $showTempInCelsius)';
}


}

/// @nodoc
abstract mixin class _$WeatherHomeStateCopyWith<$Res> implements $WeatherHomeStateCopyWith<$Res> {
  factory _$WeatherHomeStateCopyWith(_WeatherHomeState value, $Res Function(_WeatherHomeState) _then) = __$WeatherHomeStateCopyWithImpl;
@override @useResult
$Res call({
 WeatherLoadingState weatherLoadingState, bool showTempInCelsius
});


@override $WeatherLoadingStateCopyWith<$Res> get weatherLoadingState;

}
/// @nodoc
class __$WeatherHomeStateCopyWithImpl<$Res>
    implements _$WeatherHomeStateCopyWith<$Res> {
  __$WeatherHomeStateCopyWithImpl(this._self, this._then);

  final _WeatherHomeState _self;
  final $Res Function(_WeatherHomeState) _then;

/// Create a copy of WeatherHomeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? weatherLoadingState = null,Object? showTempInCelsius = null,}) {
  return _then(_WeatherHomeState(
weatherLoadingState: null == weatherLoadingState ? _self.weatherLoadingState : weatherLoadingState // ignore: cast_nullable_to_non_nullable
as WeatherLoadingState,showTempInCelsius: null == showTempInCelsius ? _self.showTempInCelsius : showTempInCelsius // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of WeatherHomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WeatherLoadingStateCopyWith<$Res> get weatherLoadingState {
  
  return $WeatherLoadingStateCopyWith<$Res>(_self.weatherLoadingState, (value) {
    return _then(_self.copyWith(weatherLoadingState: value));
  });
}
}

/// @nodoc
mixin _$WeatherLoadingState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeatherLoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WeatherLoadingState()';
}


}

/// @nodoc
class $WeatherLoadingStateCopyWith<$Res>  {
$WeatherLoadingStateCopyWith(WeatherLoadingState _, $Res Function(WeatherLoadingState) __);
}


/// @nodoc


class WeatherLoadingStateIdle implements WeatherLoadingState {
  const WeatherLoadingStateIdle();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeatherLoadingStateIdle);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WeatherLoadingState.idle()';
}


}




/// @nodoc


class WeatherLoadingStateLoading implements WeatherLoadingState {
  const WeatherLoadingStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeatherLoadingStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WeatherLoadingState.loading()';
}


}




/// @nodoc


class WeatherLoadingStateSuccess implements WeatherLoadingState {
  const WeatherLoadingStateSuccess({required final  List<WeatherReport> weatherReports}): _weatherReports = weatherReports;
  

 final  List<WeatherReport> _weatherReports;
 List<WeatherReport> get weatherReports {
  if (_weatherReports is EqualUnmodifiableListView) return _weatherReports;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_weatherReports);
}


/// Create a copy of WeatherLoadingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeatherLoadingStateSuccessCopyWith<WeatherLoadingStateSuccess> get copyWith => _$WeatherLoadingStateSuccessCopyWithImpl<WeatherLoadingStateSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeatherLoadingStateSuccess&&const DeepCollectionEquality().equals(other._weatherReports, _weatherReports));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_weatherReports));

@override
String toString() {
  return 'WeatherLoadingState.success(weatherReports: $weatherReports)';
}


}

/// @nodoc
abstract mixin class $WeatherLoadingStateSuccessCopyWith<$Res> implements $WeatherLoadingStateCopyWith<$Res> {
  factory $WeatherLoadingStateSuccessCopyWith(WeatherLoadingStateSuccess value, $Res Function(WeatherLoadingStateSuccess) _then) = _$WeatherLoadingStateSuccessCopyWithImpl;
@useResult
$Res call({
 List<WeatherReport> weatherReports
});




}
/// @nodoc
class _$WeatherLoadingStateSuccessCopyWithImpl<$Res>
    implements $WeatherLoadingStateSuccessCopyWith<$Res> {
  _$WeatherLoadingStateSuccessCopyWithImpl(this._self, this._then);

  final WeatherLoadingStateSuccess _self;
  final $Res Function(WeatherLoadingStateSuccess) _then;

/// Create a copy of WeatherLoadingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? weatherReports = null,}) {
  return _then(WeatherLoadingStateSuccess(
weatherReports: null == weatherReports ? _self._weatherReports : weatherReports // ignore: cast_nullable_to_non_nullable
as List<WeatherReport>,
  ));
}


}

/// @nodoc


class WeatherLoadingStateError implements WeatherLoadingState {
  const WeatherLoadingStateError(this.exception);
  

 final  Exception? exception;

/// Create a copy of WeatherLoadingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeatherLoadingStateErrorCopyWith<WeatherLoadingStateError> get copyWith => _$WeatherLoadingStateErrorCopyWithImpl<WeatherLoadingStateError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeatherLoadingStateError&&(identical(other.exception, exception) || other.exception == exception));
}


@override
int get hashCode => Object.hash(runtimeType,exception);

@override
String toString() {
  return 'WeatherLoadingState.error(exception: $exception)';
}


}

/// @nodoc
abstract mixin class $WeatherLoadingStateErrorCopyWith<$Res> implements $WeatherLoadingStateCopyWith<$Res> {
  factory $WeatherLoadingStateErrorCopyWith(WeatherLoadingStateError value, $Res Function(WeatherLoadingStateError) _then) = _$WeatherLoadingStateErrorCopyWithImpl;
@useResult
$Res call({
 Exception? exception
});




}
/// @nodoc
class _$WeatherLoadingStateErrorCopyWithImpl<$Res>
    implements $WeatherLoadingStateErrorCopyWith<$Res> {
  _$WeatherLoadingStateErrorCopyWithImpl(this._self, this._then);

  final WeatherLoadingStateError _self;
  final $Res Function(WeatherLoadingStateError) _then;

/// Create a copy of WeatherLoadingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? exception = freezed,}) {
  return _then(WeatherLoadingStateError(
freezed == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as Exception?,
  ));
}


}

// dart format on
