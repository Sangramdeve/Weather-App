// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast_json.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeatherForecast _$WeatherForecastFromJson(Map<String, dynamic> json) {
  return _WeatherForecast.fromJson(json);
}

/// @nodoc
mixin _$WeatherForecast {
  List<DailyWeatherData> get list => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherForecastCopyWith<WeatherForecast> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherForecastCopyWith<$Res> {
  factory $WeatherForecastCopyWith(
          WeatherForecast value, $Res Function(WeatherForecast) then) =
      _$WeatherForecastCopyWithImpl<$Res, WeatherForecast>;
  @useResult
  $Res call({List<DailyWeatherData> list});
}

/// @nodoc
class _$WeatherForecastCopyWithImpl<$Res, $Val extends WeatherForecast>
    implements $WeatherForecastCopyWith<$Res> {
  _$WeatherForecastCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_value.copyWith(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<DailyWeatherData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherForecastImplCopyWith<$Res>
    implements $WeatherForecastCopyWith<$Res> {
  factory _$$WeatherForecastImplCopyWith(_$WeatherForecastImpl value,
          $Res Function(_$WeatherForecastImpl) then) =
      __$$WeatherForecastImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DailyWeatherData> list});
}

/// @nodoc
class __$$WeatherForecastImplCopyWithImpl<$Res>
    extends _$WeatherForecastCopyWithImpl<$Res, _$WeatherForecastImpl>
    implements _$$WeatherForecastImplCopyWith<$Res> {
  __$$WeatherForecastImplCopyWithImpl(
      _$WeatherForecastImpl _value, $Res Function(_$WeatherForecastImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_$WeatherForecastImpl(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<DailyWeatherData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherForecastImpl implements _WeatherForecast {
  const _$WeatherForecastImpl({required final List<DailyWeatherData> list})
      : _list = list;

  factory _$WeatherForecastImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherForecastImplFromJson(json);

  final List<DailyWeatherData> _list;
  @override
  List<DailyWeatherData> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'WeatherForecast(list: $list)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherForecastImpl &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherForecastImplCopyWith<_$WeatherForecastImpl> get copyWith =>
      __$$WeatherForecastImplCopyWithImpl<_$WeatherForecastImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherForecastImplToJson(
      this,
    );
  }
}

abstract class _WeatherForecast implements WeatherForecast {
  const factory _WeatherForecast({required final List<DailyWeatherData> list}) =
      _$WeatherForecastImpl;

  factory _WeatherForecast.fromJson(Map<String, dynamic> json) =
      _$WeatherForecastImpl.fromJson;

  @override
  List<DailyWeatherData> get list;
  @override
  @JsonKey(ignore: true)
  _$$WeatherForecastImplCopyWith<_$WeatherForecastImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DailyWeatherData _$DailyWeatherDataFromJson(Map<String, dynamic> json) {
  return _DailyWeatherData.fromJson(json);
}

/// @nodoc
mixin _$DailyWeatherData {
  int get dt => throw _privateConstructorUsedError;
  Main get main => throw _privateConstructorUsedError;
  List<Weather> get weather => throw _privateConstructorUsedError;
  Clouds get clouds => throw _privateConstructorUsedError;
  Wind get wind => throw _privateConstructorUsedError;
  int get visibility => throw _privateConstructorUsedError;
  double get pop => throw _privateConstructorUsedError;
  Sys get sys => throw _privateConstructorUsedError;
  @JsonKey(name: 'dt_txt')
  String get dtTxt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DailyWeatherDataCopyWith<DailyWeatherData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyWeatherDataCopyWith<$Res> {
  factory $DailyWeatherDataCopyWith(
          DailyWeatherData value, $Res Function(DailyWeatherData) then) =
      _$DailyWeatherDataCopyWithImpl<$Res, DailyWeatherData>;
  @useResult
  $Res call(
      {int dt,
      Main main,
      List<Weather> weather,
      Clouds clouds,
      Wind wind,
      int visibility,
      double pop,
      Sys sys,
      @JsonKey(name: 'dt_txt') String dtTxt});

  $MainCopyWith<$Res> get main;
  $CloudsCopyWith<$Res> get clouds;
  $WindCopyWith<$Res> get wind;
  $SysCopyWith<$Res> get sys;
}

/// @nodoc
class _$DailyWeatherDataCopyWithImpl<$Res, $Val extends DailyWeatherData>
    implements $DailyWeatherDataCopyWith<$Res> {
  _$DailyWeatherDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dt = null,
    Object? main = null,
    Object? weather = null,
    Object? clouds = null,
    Object? wind = null,
    Object? visibility = null,
    Object? pop = null,
    Object? sys = null,
    Object? dtTxt = null,
  }) {
    return _then(_value.copyWith(
      dt: null == dt
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as Main,
      weather: null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<Weather>,
      clouds: null == clouds
          ? _value.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as Clouds,
      wind: null == wind
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as Wind,
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int,
      pop: null == pop
          ? _value.pop
          : pop // ignore: cast_nullable_to_non_nullable
              as double,
      sys: null == sys
          ? _value.sys
          : sys // ignore: cast_nullable_to_non_nullable
              as Sys,
      dtTxt: null == dtTxt
          ? _value.dtTxt
          : dtTxt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MainCopyWith<$Res> get main {
    return $MainCopyWith<$Res>(_value.main, (value) {
      return _then(_value.copyWith(main: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CloudsCopyWith<$Res> get clouds {
    return $CloudsCopyWith<$Res>(_value.clouds, (value) {
      return _then(_value.copyWith(clouds: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WindCopyWith<$Res> get wind {
    return $WindCopyWith<$Res>(_value.wind, (value) {
      return _then(_value.copyWith(wind: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SysCopyWith<$Res> get sys {
    return $SysCopyWith<$Res>(_value.sys, (value) {
      return _then(_value.copyWith(sys: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DailyWeatherDataImplCopyWith<$Res>
    implements $DailyWeatherDataCopyWith<$Res> {
  factory _$$DailyWeatherDataImplCopyWith(_$DailyWeatherDataImpl value,
          $Res Function(_$DailyWeatherDataImpl) then) =
      __$$DailyWeatherDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int dt,
      Main main,
      List<Weather> weather,
      Clouds clouds,
      Wind wind,
      int visibility,
      double pop,
      Sys sys,
      @JsonKey(name: 'dt_txt') String dtTxt});

  @override
  $MainCopyWith<$Res> get main;
  @override
  $CloudsCopyWith<$Res> get clouds;
  @override
  $WindCopyWith<$Res> get wind;
  @override
  $SysCopyWith<$Res> get sys;
}

/// @nodoc
class __$$DailyWeatherDataImplCopyWithImpl<$Res>
    extends _$DailyWeatherDataCopyWithImpl<$Res, _$DailyWeatherDataImpl>
    implements _$$DailyWeatherDataImplCopyWith<$Res> {
  __$$DailyWeatherDataImplCopyWithImpl(_$DailyWeatherDataImpl _value,
      $Res Function(_$DailyWeatherDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dt = null,
    Object? main = null,
    Object? weather = null,
    Object? clouds = null,
    Object? wind = null,
    Object? visibility = null,
    Object? pop = null,
    Object? sys = null,
    Object? dtTxt = null,
  }) {
    return _then(_$DailyWeatherDataImpl(
      dt: null == dt
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as Main,
      weather: null == weather
          ? _value._weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<Weather>,
      clouds: null == clouds
          ? _value.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as Clouds,
      wind: null == wind
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as Wind,
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int,
      pop: null == pop
          ? _value.pop
          : pop // ignore: cast_nullable_to_non_nullable
              as double,
      sys: null == sys
          ? _value.sys
          : sys // ignore: cast_nullable_to_non_nullable
              as Sys,
      dtTxt: null == dtTxt
          ? _value.dtTxt
          : dtTxt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DailyWeatherDataImpl implements _DailyWeatherData {
  const _$DailyWeatherDataImpl(
      {required this.dt,
      required this.main,
      required final List<Weather> weather,
      required this.clouds,
      required this.wind,
      required this.visibility,
      required this.pop,
      required this.sys,
      @JsonKey(name: 'dt_txt') required this.dtTxt})
      : _weather = weather;

  factory _$DailyWeatherDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DailyWeatherDataImplFromJson(json);

  @override
  final int dt;
  @override
  final Main main;
  final List<Weather> _weather;
  @override
  List<Weather> get weather {
    if (_weather is EqualUnmodifiableListView) return _weather;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weather);
  }

  @override
  final Clouds clouds;
  @override
  final Wind wind;
  @override
  final int visibility;
  @override
  final double pop;
  @override
  final Sys sys;
  @override
  @JsonKey(name: 'dt_txt')
  final String dtTxt;

  @override
  String toString() {
    return 'DailyWeatherData(dt: $dt, main: $main, weather: $weather, clouds: $clouds, wind: $wind, visibility: $visibility, pop: $pop, sys: $sys, dtTxt: $dtTxt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyWeatherDataImpl &&
            (identical(other.dt, dt) || other.dt == dt) &&
            (identical(other.main, main) || other.main == main) &&
            const DeepCollectionEquality().equals(other._weather, _weather) &&
            (identical(other.clouds, clouds) || other.clouds == clouds) &&
            (identical(other.wind, wind) || other.wind == wind) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility) &&
            (identical(other.pop, pop) || other.pop == pop) &&
            (identical(other.sys, sys) || other.sys == sys) &&
            (identical(other.dtTxt, dtTxt) || other.dtTxt == dtTxt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      dt,
      main,
      const DeepCollectionEquality().hash(_weather),
      clouds,
      wind,
      visibility,
      pop,
      sys,
      dtTxt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyWeatherDataImplCopyWith<_$DailyWeatherDataImpl> get copyWith =>
      __$$DailyWeatherDataImplCopyWithImpl<_$DailyWeatherDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DailyWeatherDataImplToJson(
      this,
    );
  }
}

abstract class _DailyWeatherData implements DailyWeatherData {
  const factory _DailyWeatherData(
          {required final int dt,
          required final Main main,
          required final List<Weather> weather,
          required final Clouds clouds,
          required final Wind wind,
          required final int visibility,
          required final double pop,
          required final Sys sys,
          @JsonKey(name: 'dt_txt') required final String dtTxt}) =
      _$DailyWeatherDataImpl;

  factory _DailyWeatherData.fromJson(Map<String, dynamic> json) =
      _$DailyWeatherDataImpl.fromJson;

  @override
  int get dt;
  @override
  Main get main;
  @override
  List<Weather> get weather;
  @override
  Clouds get clouds;
  @override
  Wind get wind;
  @override
  int get visibility;
  @override
  double get pop;
  @override
  Sys get sys;
  @override
  @JsonKey(name: 'dt_txt')
  String get dtTxt;
  @override
  @JsonKey(ignore: true)
  _$$DailyWeatherDataImplCopyWith<_$DailyWeatherDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Main _$MainFromJson(Map<String, dynamic> json) {
  return _Main.fromJson(json);
}

/// @nodoc
mixin _$Main {
  double get temp => throw _privateConstructorUsedError;
  @JsonKey(name: 'feels_like')
  double get feelsLike => throw _privateConstructorUsedError;
  @JsonKey(name: 'temp_min')
  double get tempMin => throw _privateConstructorUsedError;
  @JsonKey(name: 'temp_max')
  double get tempMax => throw _privateConstructorUsedError;
  int get pressure => throw _privateConstructorUsedError;
  @JsonKey(name: 'sea_level')
  int get seaLevel => throw _privateConstructorUsedError;
  @JsonKey(name: 'grnd_level')
  int get grndLevel => throw _privateConstructorUsedError;
  int get humidity => throw _privateConstructorUsedError;
  @JsonKey(name: 'temp_kf')
  double get tempKf => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MainCopyWith<Main> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainCopyWith<$Res> {
  factory $MainCopyWith(Main value, $Res Function(Main) then) =
      _$MainCopyWithImpl<$Res, Main>;
  @useResult
  $Res call(
      {double temp,
      @JsonKey(name: 'feels_like') double feelsLike,
      @JsonKey(name: 'temp_min') double tempMin,
      @JsonKey(name: 'temp_max') double tempMax,
      int pressure,
      @JsonKey(name: 'sea_level') int seaLevel,
      @JsonKey(name: 'grnd_level') int grndLevel,
      int humidity,
      @JsonKey(name: 'temp_kf') double tempKf});
}

/// @nodoc
class _$MainCopyWithImpl<$Res, $Val extends Main>
    implements $MainCopyWith<$Res> {
  _$MainCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = null,
    Object? feelsLike = null,
    Object? tempMin = null,
    Object? tempMax = null,
    Object? pressure = null,
    Object? seaLevel = null,
    Object? grndLevel = null,
    Object? humidity = null,
    Object? tempKf = null,
  }) {
    return _then(_value.copyWith(
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
      feelsLike: null == feelsLike
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as double,
      tempMin: null == tempMin
          ? _value.tempMin
          : tempMin // ignore: cast_nullable_to_non_nullable
              as double,
      tempMax: null == tempMax
          ? _value.tempMax
          : tempMax // ignore: cast_nullable_to_non_nullable
              as double,
      pressure: null == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int,
      seaLevel: null == seaLevel
          ? _value.seaLevel
          : seaLevel // ignore: cast_nullable_to_non_nullable
              as int,
      grndLevel: null == grndLevel
          ? _value.grndLevel
          : grndLevel // ignore: cast_nullable_to_non_nullable
              as int,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      tempKf: null == tempKf
          ? _value.tempKf
          : tempKf // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MainImplCopyWith<$Res> implements $MainCopyWith<$Res> {
  factory _$$MainImplCopyWith(
          _$MainImpl value, $Res Function(_$MainImpl) then) =
      __$$MainImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double temp,
      @JsonKey(name: 'feels_like') double feelsLike,
      @JsonKey(name: 'temp_min') double tempMin,
      @JsonKey(name: 'temp_max') double tempMax,
      int pressure,
      @JsonKey(name: 'sea_level') int seaLevel,
      @JsonKey(name: 'grnd_level') int grndLevel,
      int humidity,
      @JsonKey(name: 'temp_kf') double tempKf});
}

/// @nodoc
class __$$MainImplCopyWithImpl<$Res>
    extends _$MainCopyWithImpl<$Res, _$MainImpl>
    implements _$$MainImplCopyWith<$Res> {
  __$$MainImplCopyWithImpl(_$MainImpl _value, $Res Function(_$MainImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = null,
    Object? feelsLike = null,
    Object? tempMin = null,
    Object? tempMax = null,
    Object? pressure = null,
    Object? seaLevel = null,
    Object? grndLevel = null,
    Object? humidity = null,
    Object? tempKf = null,
  }) {
    return _then(_$MainImpl(
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
      feelsLike: null == feelsLike
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as double,
      tempMin: null == tempMin
          ? _value.tempMin
          : tempMin // ignore: cast_nullable_to_non_nullable
              as double,
      tempMax: null == tempMax
          ? _value.tempMax
          : tempMax // ignore: cast_nullable_to_non_nullable
              as double,
      pressure: null == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int,
      seaLevel: null == seaLevel
          ? _value.seaLevel
          : seaLevel // ignore: cast_nullable_to_non_nullable
              as int,
      grndLevel: null == grndLevel
          ? _value.grndLevel
          : grndLevel // ignore: cast_nullable_to_non_nullable
              as int,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      tempKf: null == tempKf
          ? _value.tempKf
          : tempKf // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MainImpl implements _Main {
  const _$MainImpl(
      {required this.temp,
      @JsonKey(name: 'feels_like') required this.feelsLike,
      @JsonKey(name: 'temp_min') required this.tempMin,
      @JsonKey(name: 'temp_max') required this.tempMax,
      required this.pressure,
      @JsonKey(name: 'sea_level') required this.seaLevel,
      @JsonKey(name: 'grnd_level') required this.grndLevel,
      required this.humidity,
      @JsonKey(name: 'temp_kf') required this.tempKf});

  factory _$MainImpl.fromJson(Map<String, dynamic> json) =>
      _$$MainImplFromJson(json);

  @override
  final double temp;
  @override
  @JsonKey(name: 'feels_like')
  final double feelsLike;
  @override
  @JsonKey(name: 'temp_min')
  final double tempMin;
  @override
  @JsonKey(name: 'temp_max')
  final double tempMax;
  @override
  final int pressure;
  @override
  @JsonKey(name: 'sea_level')
  final int seaLevel;
  @override
  @JsonKey(name: 'grnd_level')
  final int grndLevel;
  @override
  final int humidity;
  @override
  @JsonKey(name: 'temp_kf')
  final double tempKf;

  @override
  String toString() {
    return 'Main(temp: $temp, feelsLike: $feelsLike, tempMin: $tempMin, tempMax: $tempMax, pressure: $pressure, seaLevel: $seaLevel, grndLevel: $grndLevel, humidity: $humidity, tempKf: $tempKf)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainImpl &&
            (identical(other.temp, temp) || other.temp == temp) &&
            (identical(other.feelsLike, feelsLike) ||
                other.feelsLike == feelsLike) &&
            (identical(other.tempMin, tempMin) || other.tempMin == tempMin) &&
            (identical(other.tempMax, tempMax) || other.tempMax == tempMax) &&
            (identical(other.pressure, pressure) ||
                other.pressure == pressure) &&
            (identical(other.seaLevel, seaLevel) ||
                other.seaLevel == seaLevel) &&
            (identical(other.grndLevel, grndLevel) ||
                other.grndLevel == grndLevel) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.tempKf, tempKf) || other.tempKf == tempKf));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, temp, feelsLike, tempMin,
      tempMax, pressure, seaLevel, grndLevel, humidity, tempKf);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainImplCopyWith<_$MainImpl> get copyWith =>
      __$$MainImplCopyWithImpl<_$MainImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MainImplToJson(
      this,
    );
  }
}

abstract class _Main implements Main {
  const factory _Main(
      {required final double temp,
      @JsonKey(name: 'feels_like') required final double feelsLike,
      @JsonKey(name: 'temp_min') required final double tempMin,
      @JsonKey(name: 'temp_max') required final double tempMax,
      required final int pressure,
      @JsonKey(name: 'sea_level') required final int seaLevel,
      @JsonKey(name: 'grnd_level') required final int grndLevel,
      required final int humidity,
      @JsonKey(name: 'temp_kf') required final double tempKf}) = _$MainImpl;

  factory _Main.fromJson(Map<String, dynamic> json) = _$MainImpl.fromJson;

  @override
  double get temp;
  @override
  @JsonKey(name: 'feels_like')
  double get feelsLike;
  @override
  @JsonKey(name: 'temp_min')
  double get tempMin;
  @override
  @JsonKey(name: 'temp_max')
  double get tempMax;
  @override
  int get pressure;
  @override
  @JsonKey(name: 'sea_level')
  int get seaLevel;
  @override
  @JsonKey(name: 'grnd_level')
  int get grndLevel;
  @override
  int get humidity;
  @override
  @JsonKey(name: 'temp_kf')
  double get tempKf;
  @override
  @JsonKey(ignore: true)
  _$$MainImplCopyWith<_$MainImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Weather _$WeatherFromJson(Map<String, dynamic> json) {
  return _Weather.fromJson(json);
}

/// @nodoc
mixin _$Weather {
  int get id => throw _privateConstructorUsedError;
  String get main => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherCopyWith<Weather> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherCopyWith<$Res> {
  factory $WeatherCopyWith(Weather value, $Res Function(Weather) then) =
      _$WeatherCopyWithImpl<$Res, Weather>;
  @useResult
  $Res call({int id, String main, String description, String icon});
}

/// @nodoc
class _$WeatherCopyWithImpl<$Res, $Val extends Weather>
    implements $WeatherCopyWith<$Res> {
  _$WeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? main = null,
    Object? description = null,
    Object? icon = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherImplCopyWith<$Res> implements $WeatherCopyWith<$Res> {
  factory _$$WeatherImplCopyWith(
          _$WeatherImpl value, $Res Function(_$WeatherImpl) then) =
      __$$WeatherImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String main, String description, String icon});
}

/// @nodoc
class __$$WeatherImplCopyWithImpl<$Res>
    extends _$WeatherCopyWithImpl<$Res, _$WeatherImpl>
    implements _$$WeatherImplCopyWith<$Res> {
  __$$WeatherImplCopyWithImpl(
      _$WeatherImpl _value, $Res Function(_$WeatherImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? main = null,
    Object? description = null,
    Object? icon = null,
  }) {
    return _then(_$WeatherImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherImpl implements _Weather {
  const _$WeatherImpl(
      {required this.id,
      required this.main,
      required this.description,
      required this.icon});

  factory _$WeatherImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherImplFromJson(json);

  @override
  final int id;
  @override
  final String main;
  @override
  final String description;
  @override
  final String icon;

  @override
  String toString() {
    return 'Weather(id: $id, main: $main, description: $description, icon: $icon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.main, main) || other.main == main) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, main, description, icon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherImplCopyWith<_$WeatherImpl> get copyWith =>
      __$$WeatherImplCopyWithImpl<_$WeatherImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherImplToJson(
      this,
    );
  }
}

abstract class _Weather implements Weather {
  const factory _Weather(
      {required final int id,
      required final String main,
      required final String description,
      required final String icon}) = _$WeatherImpl;

  factory _Weather.fromJson(Map<String, dynamic> json) = _$WeatherImpl.fromJson;

  @override
  int get id;
  @override
  String get main;
  @override
  String get description;
  @override
  String get icon;
  @override
  @JsonKey(ignore: true)
  _$$WeatherImplCopyWith<_$WeatherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Clouds _$CloudsFromJson(Map<String, dynamic> json) {
  return _Clouds.fromJson(json);
}

/// @nodoc
mixin _$Clouds {
  int get all => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CloudsCopyWith<Clouds> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CloudsCopyWith<$Res> {
  factory $CloudsCopyWith(Clouds value, $Res Function(Clouds) then) =
      _$CloudsCopyWithImpl<$Res, Clouds>;
  @useResult
  $Res call({int all});
}

/// @nodoc
class _$CloudsCopyWithImpl<$Res, $Val extends Clouds>
    implements $CloudsCopyWith<$Res> {
  _$CloudsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? all = null,
  }) {
    return _then(_value.copyWith(
      all: null == all
          ? _value.all
          : all // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CloudsImplCopyWith<$Res> implements $CloudsCopyWith<$Res> {
  factory _$$CloudsImplCopyWith(
          _$CloudsImpl value, $Res Function(_$CloudsImpl) then) =
      __$$CloudsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int all});
}

/// @nodoc
class __$$CloudsImplCopyWithImpl<$Res>
    extends _$CloudsCopyWithImpl<$Res, _$CloudsImpl>
    implements _$$CloudsImplCopyWith<$Res> {
  __$$CloudsImplCopyWithImpl(
      _$CloudsImpl _value, $Res Function(_$CloudsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? all = null,
  }) {
    return _then(_$CloudsImpl(
      all: null == all
          ? _value.all
          : all // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CloudsImpl implements _Clouds {
  const _$CloudsImpl({required this.all});

  factory _$CloudsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CloudsImplFromJson(json);

  @override
  final int all;

  @override
  String toString() {
    return 'Clouds(all: $all)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CloudsImpl &&
            (identical(other.all, all) || other.all == all));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, all);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CloudsImplCopyWith<_$CloudsImpl> get copyWith =>
      __$$CloudsImplCopyWithImpl<_$CloudsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CloudsImplToJson(
      this,
    );
  }
}

abstract class _Clouds implements Clouds {
  const factory _Clouds({required final int all}) = _$CloudsImpl;

  factory _Clouds.fromJson(Map<String, dynamic> json) = _$CloudsImpl.fromJson;

  @override
  int get all;
  @override
  @JsonKey(ignore: true)
  _$$CloudsImplCopyWith<_$CloudsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Wind _$WindFromJson(Map<String, dynamic> json) {
  return _Wind.fromJson(json);
}

/// @nodoc
mixin _$Wind {
  double get speed => throw _privateConstructorUsedError;
  int get deg => throw _privateConstructorUsedError;
  double get gust => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WindCopyWith<Wind> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WindCopyWith<$Res> {
  factory $WindCopyWith(Wind value, $Res Function(Wind) then) =
      _$WindCopyWithImpl<$Res, Wind>;
  @useResult
  $Res call({double speed, int deg, double gust});
}

/// @nodoc
class _$WindCopyWithImpl<$Res, $Val extends Wind>
    implements $WindCopyWith<$Res> {
  _$WindCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? speed = null,
    Object? deg = null,
    Object? gust = null,
  }) {
    return _then(_value.copyWith(
      speed: null == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as double,
      deg: null == deg
          ? _value.deg
          : deg // ignore: cast_nullable_to_non_nullable
              as int,
      gust: null == gust
          ? _value.gust
          : gust // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WindImplCopyWith<$Res> implements $WindCopyWith<$Res> {
  factory _$$WindImplCopyWith(
          _$WindImpl value, $Res Function(_$WindImpl) then) =
      __$$WindImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double speed, int deg, double gust});
}

/// @nodoc
class __$$WindImplCopyWithImpl<$Res>
    extends _$WindCopyWithImpl<$Res, _$WindImpl>
    implements _$$WindImplCopyWith<$Res> {
  __$$WindImplCopyWithImpl(_$WindImpl _value, $Res Function(_$WindImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? speed = null,
    Object? deg = null,
    Object? gust = null,
  }) {
    return _then(_$WindImpl(
      speed: null == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as double,
      deg: null == deg
          ? _value.deg
          : deg // ignore: cast_nullable_to_non_nullable
              as int,
      gust: null == gust
          ? _value.gust
          : gust // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WindImpl implements _Wind {
  const _$WindImpl(
      {required this.speed, required this.deg, required this.gust});

  factory _$WindImpl.fromJson(Map<String, dynamic> json) =>
      _$$WindImplFromJson(json);

  @override
  final double speed;
  @override
  final int deg;
  @override
  final double gust;

  @override
  String toString() {
    return 'Wind(speed: $speed, deg: $deg, gust: $gust)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WindImpl &&
            (identical(other.speed, speed) || other.speed == speed) &&
            (identical(other.deg, deg) || other.deg == deg) &&
            (identical(other.gust, gust) || other.gust == gust));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, speed, deg, gust);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WindImplCopyWith<_$WindImpl> get copyWith =>
      __$$WindImplCopyWithImpl<_$WindImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WindImplToJson(
      this,
    );
  }
}

abstract class _Wind implements Wind {
  const factory _Wind(
      {required final double speed,
      required final int deg,
      required final double gust}) = _$WindImpl;

  factory _Wind.fromJson(Map<String, dynamic> json) = _$WindImpl.fromJson;

  @override
  double get speed;
  @override
  int get deg;
  @override
  double get gust;
  @override
  @JsonKey(ignore: true)
  _$$WindImplCopyWith<_$WindImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Sys _$SysFromJson(Map<String, dynamic> json) {
  return _Sys.fromJson(json);
}

/// @nodoc
mixin _$Sys {
  String get pod => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SysCopyWith<Sys> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SysCopyWith<$Res> {
  factory $SysCopyWith(Sys value, $Res Function(Sys) then) =
      _$SysCopyWithImpl<$Res, Sys>;
  @useResult
  $Res call({String pod});
}

/// @nodoc
class _$SysCopyWithImpl<$Res, $Val extends Sys> implements $SysCopyWith<$Res> {
  _$SysCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pod = null,
  }) {
    return _then(_value.copyWith(
      pod: null == pod
          ? _value.pod
          : pod // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SysImplCopyWith<$Res> implements $SysCopyWith<$Res> {
  factory _$$SysImplCopyWith(_$SysImpl value, $Res Function(_$SysImpl) then) =
      __$$SysImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String pod});
}

/// @nodoc
class __$$SysImplCopyWithImpl<$Res> extends _$SysCopyWithImpl<$Res, _$SysImpl>
    implements _$$SysImplCopyWith<$Res> {
  __$$SysImplCopyWithImpl(_$SysImpl _value, $Res Function(_$SysImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pod = null,
  }) {
    return _then(_$SysImpl(
      pod: null == pod
          ? _value.pod
          : pod // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SysImpl implements _Sys {
  const _$SysImpl({required this.pod});

  factory _$SysImpl.fromJson(Map<String, dynamic> json) =>
      _$$SysImplFromJson(json);

  @override
  final String pod;

  @override
  String toString() {
    return 'Sys(pod: $pod)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SysImpl &&
            (identical(other.pod, pod) || other.pod == pod));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, pod);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SysImplCopyWith<_$SysImpl> get copyWith =>
      __$$SysImplCopyWithImpl<_$SysImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SysImplToJson(
      this,
    );
  }
}

abstract class _Sys implements Sys {
  const factory _Sys({required final String pod}) = _$SysImpl;

  factory _Sys.fromJson(Map<String, dynamic> json) = _$SysImpl.fromJson;

  @override
  String get pod;
  @override
  @JsonKey(ignore: true)
  _$$SysImplCopyWith<_$SysImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
