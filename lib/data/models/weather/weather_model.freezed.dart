// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WeatherResponse {
  double? get lat;
  double? get lon;
  String? get timezone;
  int? get timezoneOffset;
  CurrentWeather? get current;
  List<HourlyWeather>? get hourly;
  List<DailyWeather>? get daily;

  /// Create a copy of WeatherResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WeatherResponseCopyWith<WeatherResponse> get copyWith =>
      _$WeatherResponseCopyWithImpl<WeatherResponse>(
          this as WeatherResponse, _$identity);

  /// Serializes this WeatherResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WeatherResponse &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lon, lon) || other.lon == lon) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.timezoneOffset, timezoneOffset) ||
                other.timezoneOffset == timezoneOffset) &&
            (identical(other.current, current) || other.current == current) &&
            const DeepCollectionEquality().equals(other.hourly, hourly) &&
            const DeepCollectionEquality().equals(other.daily, daily));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      lat,
      lon,
      timezone,
      timezoneOffset,
      current,
      const DeepCollectionEquality().hash(hourly),
      const DeepCollectionEquality().hash(daily));

  @override
  String toString() {
    return 'WeatherResponse(lat: $lat, lon: $lon, timezone: $timezone, timezoneOffset: $timezoneOffset, current: $current, hourly: $hourly, daily: $daily)';
  }
}

/// @nodoc
abstract mixin class $WeatherResponseCopyWith<$Res> {
  factory $WeatherResponseCopyWith(
          WeatherResponse value, $Res Function(WeatherResponse) _then) =
      _$WeatherResponseCopyWithImpl;
  @useResult
  $Res call(
      {double? lat,
      double? lon,
      String? timezone,
      int? timezoneOffset,
      CurrentWeather? current,
      List<HourlyWeather>? hourly,
      List<DailyWeather>? daily});

  $CurrentWeatherCopyWith<$Res>? get current;
}

/// @nodoc
class _$WeatherResponseCopyWithImpl<$Res>
    implements $WeatherResponseCopyWith<$Res> {
  _$WeatherResponseCopyWithImpl(this._self, this._then);

  final WeatherResponse _self;
  final $Res Function(WeatherResponse) _then;

  /// Create a copy of WeatherResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = freezed,
    Object? lon = freezed,
    Object? timezone = freezed,
    Object? timezoneOffset = freezed,
    Object? current = freezed,
    Object? hourly = freezed,
    Object? daily = freezed,
  }) {
    return _then(_self.copyWith(
      lat: freezed == lat
          ? _self.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lon: freezed == lon
          ? _self.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double?,
      timezone: freezed == timezone
          ? _self.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      timezoneOffset: freezed == timezoneOffset
          ? _self.timezoneOffset
          : timezoneOffset // ignore: cast_nullable_to_non_nullable
              as int?,
      current: freezed == current
          ? _self.current
          : current // ignore: cast_nullable_to_non_nullable
              as CurrentWeather?,
      hourly: freezed == hourly
          ? _self.hourly
          : hourly // ignore: cast_nullable_to_non_nullable
              as List<HourlyWeather>?,
      daily: freezed == daily
          ? _self.daily
          : daily // ignore: cast_nullable_to_non_nullable
              as List<DailyWeather>?,
    ));
  }

  /// Create a copy of WeatherResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CurrentWeatherCopyWith<$Res>? get current {
    if (_self.current == null) {
      return null;
    }

    return $CurrentWeatherCopyWith<$Res>(_self.current!, (value) {
      return _then(_self.copyWith(current: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _WeatherResponse implements WeatherResponse {
  const _WeatherResponse(
      {this.lat,
      this.lon,
      this.timezone,
      this.timezoneOffset,
      this.current,
      final List<HourlyWeather>? hourly,
      final List<DailyWeather>? daily})
      : _hourly = hourly,
        _daily = daily;
  factory _WeatherResponse.fromJson(Map<String, dynamic> json) =>
      _$WeatherResponseFromJson(json);

  @override
  final double? lat;
  @override
  final double? lon;
  @override
  final String? timezone;
  @override
  final int? timezoneOffset;
  @override
  final CurrentWeather? current;
  final List<HourlyWeather>? _hourly;
  @override
  List<HourlyWeather>? get hourly {
    final value = _hourly;
    if (value == null) return null;
    if (_hourly is EqualUnmodifiableListView) return _hourly;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<DailyWeather>? _daily;
  @override
  List<DailyWeather>? get daily {
    final value = _daily;
    if (value == null) return null;
    if (_daily is EqualUnmodifiableListView) return _daily;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of WeatherResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WeatherResponseCopyWith<_WeatherResponse> get copyWith =>
      __$WeatherResponseCopyWithImpl<_WeatherResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WeatherResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WeatherResponse &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lon, lon) || other.lon == lon) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.timezoneOffset, timezoneOffset) ||
                other.timezoneOffset == timezoneOffset) &&
            (identical(other.current, current) || other.current == current) &&
            const DeepCollectionEquality().equals(other._hourly, _hourly) &&
            const DeepCollectionEquality().equals(other._daily, _daily));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      lat,
      lon,
      timezone,
      timezoneOffset,
      current,
      const DeepCollectionEquality().hash(_hourly),
      const DeepCollectionEquality().hash(_daily));

  @override
  String toString() {
    return 'WeatherResponse(lat: $lat, lon: $lon, timezone: $timezone, timezoneOffset: $timezoneOffset, current: $current, hourly: $hourly, daily: $daily)';
  }
}

/// @nodoc
abstract mixin class _$WeatherResponseCopyWith<$Res>
    implements $WeatherResponseCopyWith<$Res> {
  factory _$WeatherResponseCopyWith(
          _WeatherResponse value, $Res Function(_WeatherResponse) _then) =
      __$WeatherResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {double? lat,
      double? lon,
      String? timezone,
      int? timezoneOffset,
      CurrentWeather? current,
      List<HourlyWeather>? hourly,
      List<DailyWeather>? daily});

  @override
  $CurrentWeatherCopyWith<$Res>? get current;
}

/// @nodoc
class __$WeatherResponseCopyWithImpl<$Res>
    implements _$WeatherResponseCopyWith<$Res> {
  __$WeatherResponseCopyWithImpl(this._self, this._then);

  final _WeatherResponse _self;
  final $Res Function(_WeatherResponse) _then;

  /// Create a copy of WeatherResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? lat = freezed,
    Object? lon = freezed,
    Object? timezone = freezed,
    Object? timezoneOffset = freezed,
    Object? current = freezed,
    Object? hourly = freezed,
    Object? daily = freezed,
  }) {
    return _then(_WeatherResponse(
      lat: freezed == lat
          ? _self.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lon: freezed == lon
          ? _self.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double?,
      timezone: freezed == timezone
          ? _self.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      timezoneOffset: freezed == timezoneOffset
          ? _self.timezoneOffset
          : timezoneOffset // ignore: cast_nullable_to_non_nullable
              as int?,
      current: freezed == current
          ? _self.current
          : current // ignore: cast_nullable_to_non_nullable
              as CurrentWeather?,
      hourly: freezed == hourly
          ? _self._hourly
          : hourly // ignore: cast_nullable_to_non_nullable
              as List<HourlyWeather>?,
      daily: freezed == daily
          ? _self._daily
          : daily // ignore: cast_nullable_to_non_nullable
              as List<DailyWeather>?,
    ));
  }

  /// Create a copy of WeatherResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CurrentWeatherCopyWith<$Res>? get current {
    if (_self.current == null) {
      return null;
    }

    return $CurrentWeatherCopyWith<$Res>(_self.current!, (value) {
      return _then(_self.copyWith(current: value));
    });
  }
}

/// @nodoc
mixin _$CurrentWeather {
  int? get dt;
  int? get sunrise;
  int? get sunset;
  double? get temp;
  @JsonKey(name: 'feels_like')
  double? get feelsLike;
  int? get pressure;
  int? get humidity;
  @JsonKey(name: 'dew_point')
  double? get dewPoint;
  double? get uvi;
  int? get clouds;
  int? get visibility;
  @JsonKey(name: 'wind_speed')
  double? get windSpeed;
  @JsonKey(name: 'wind_deg')
  int? get windDeg;
  @JsonKey(name: 'wind_gust')
  double? get windGust;
  List<WeatherCondition>? get weather;

  /// Create a copy of CurrentWeather
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CurrentWeatherCopyWith<CurrentWeather> get copyWith =>
      _$CurrentWeatherCopyWithImpl<CurrentWeather>(
          this as CurrentWeather, _$identity);

  /// Serializes this CurrentWeather to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CurrentWeather &&
            (identical(other.dt, dt) || other.dt == dt) &&
            (identical(other.sunrise, sunrise) || other.sunrise == sunrise) &&
            (identical(other.sunset, sunset) || other.sunset == sunset) &&
            (identical(other.temp, temp) || other.temp == temp) &&
            (identical(other.feelsLike, feelsLike) ||
                other.feelsLike == feelsLike) &&
            (identical(other.pressure, pressure) ||
                other.pressure == pressure) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.dewPoint, dewPoint) ||
                other.dewPoint == dewPoint) &&
            (identical(other.uvi, uvi) || other.uvi == uvi) &&
            (identical(other.clouds, clouds) || other.clouds == clouds) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility) &&
            (identical(other.windSpeed, windSpeed) ||
                other.windSpeed == windSpeed) &&
            (identical(other.windDeg, windDeg) || other.windDeg == windDeg) &&
            (identical(other.windGust, windGust) ||
                other.windGust == windGust) &&
            const DeepCollectionEquality().equals(other.weather, weather));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      dt,
      sunrise,
      sunset,
      temp,
      feelsLike,
      pressure,
      humidity,
      dewPoint,
      uvi,
      clouds,
      visibility,
      windSpeed,
      windDeg,
      windGust,
      const DeepCollectionEquality().hash(weather));

  @override
  String toString() {
    return 'CurrentWeather(dt: $dt, sunrise: $sunrise, sunset: $sunset, temp: $temp, feelsLike: $feelsLike, pressure: $pressure, humidity: $humidity, dewPoint: $dewPoint, uvi: $uvi, clouds: $clouds, visibility: $visibility, windSpeed: $windSpeed, windDeg: $windDeg, windGust: $windGust, weather: $weather)';
  }
}

/// @nodoc
abstract mixin class $CurrentWeatherCopyWith<$Res> {
  factory $CurrentWeatherCopyWith(
          CurrentWeather value, $Res Function(CurrentWeather) _then) =
      _$CurrentWeatherCopyWithImpl;
  @useResult
  $Res call(
      {int? dt,
      int? sunrise,
      int? sunset,
      double? temp,
      @JsonKey(name: 'feels_like') double? feelsLike,
      int? pressure,
      int? humidity,
      @JsonKey(name: 'dew_point') double? dewPoint,
      double? uvi,
      int? clouds,
      int? visibility,
      @JsonKey(name: 'wind_speed') double? windSpeed,
      @JsonKey(name: 'wind_deg') int? windDeg,
      @JsonKey(name: 'wind_gust') double? windGust,
      List<WeatherCondition>? weather});
}

/// @nodoc
class _$CurrentWeatherCopyWithImpl<$Res>
    implements $CurrentWeatherCopyWith<$Res> {
  _$CurrentWeatherCopyWithImpl(this._self, this._then);

  final CurrentWeather _self;
  final $Res Function(CurrentWeather) _then;

  /// Create a copy of CurrentWeather
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dt = freezed,
    Object? sunrise = freezed,
    Object? sunset = freezed,
    Object? temp = freezed,
    Object? feelsLike = freezed,
    Object? pressure = freezed,
    Object? humidity = freezed,
    Object? dewPoint = freezed,
    Object? uvi = freezed,
    Object? clouds = freezed,
    Object? visibility = freezed,
    Object? windSpeed = freezed,
    Object? windDeg = freezed,
    Object? windGust = freezed,
    Object? weather = freezed,
  }) {
    return _then(_self.copyWith(
      dt: freezed == dt
          ? _self.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int?,
      sunrise: freezed == sunrise
          ? _self.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as int?,
      sunset: freezed == sunset
          ? _self.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as int?,
      temp: freezed == temp
          ? _self.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double?,
      feelsLike: freezed == feelsLike
          ? _self.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as double?,
      pressure: freezed == pressure
          ? _self.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int?,
      humidity: freezed == humidity
          ? _self.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int?,
      dewPoint: freezed == dewPoint
          ? _self.dewPoint
          : dewPoint // ignore: cast_nullable_to_non_nullable
              as double?,
      uvi: freezed == uvi
          ? _self.uvi
          : uvi // ignore: cast_nullable_to_non_nullable
              as double?,
      clouds: freezed == clouds
          ? _self.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as int?,
      visibility: freezed == visibility
          ? _self.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int?,
      windSpeed: freezed == windSpeed
          ? _self.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double?,
      windDeg: freezed == windDeg
          ? _self.windDeg
          : windDeg // ignore: cast_nullable_to_non_nullable
              as int?,
      windGust: freezed == windGust
          ? _self.windGust
          : windGust // ignore: cast_nullable_to_non_nullable
              as double?,
      weather: freezed == weather
          ? _self.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherCondition>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _CurrentWeather implements CurrentWeather {
  const _CurrentWeather(
      {this.dt,
      this.sunrise,
      this.sunset,
      this.temp,
      @JsonKey(name: 'feels_like') this.feelsLike,
      this.pressure,
      this.humidity,
      @JsonKey(name: 'dew_point') this.dewPoint,
      this.uvi,
      this.clouds,
      this.visibility,
      @JsonKey(name: 'wind_speed') this.windSpeed,
      @JsonKey(name: 'wind_deg') this.windDeg,
      @JsonKey(name: 'wind_gust') this.windGust,
      final List<WeatherCondition>? weather})
      : _weather = weather;
  factory _CurrentWeather.fromJson(Map<String, dynamic> json) =>
      _$CurrentWeatherFromJson(json);

  @override
  final int? dt;
  @override
  final int? sunrise;
  @override
  final int? sunset;
  @override
  final double? temp;
  @override
  @JsonKey(name: 'feels_like')
  final double? feelsLike;
  @override
  final int? pressure;
  @override
  final int? humidity;
  @override
  @JsonKey(name: 'dew_point')
  final double? dewPoint;
  @override
  final double? uvi;
  @override
  final int? clouds;
  @override
  final int? visibility;
  @override
  @JsonKey(name: 'wind_speed')
  final double? windSpeed;
  @override
  @JsonKey(name: 'wind_deg')
  final int? windDeg;
  @override
  @JsonKey(name: 'wind_gust')
  final double? windGust;
  final List<WeatherCondition>? _weather;
  @override
  List<WeatherCondition>? get weather {
    final value = _weather;
    if (value == null) return null;
    if (_weather is EqualUnmodifiableListView) return _weather;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of CurrentWeather
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CurrentWeatherCopyWith<_CurrentWeather> get copyWith =>
      __$CurrentWeatherCopyWithImpl<_CurrentWeather>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CurrentWeatherToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CurrentWeather &&
            (identical(other.dt, dt) || other.dt == dt) &&
            (identical(other.sunrise, sunrise) || other.sunrise == sunrise) &&
            (identical(other.sunset, sunset) || other.sunset == sunset) &&
            (identical(other.temp, temp) || other.temp == temp) &&
            (identical(other.feelsLike, feelsLike) ||
                other.feelsLike == feelsLike) &&
            (identical(other.pressure, pressure) ||
                other.pressure == pressure) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.dewPoint, dewPoint) ||
                other.dewPoint == dewPoint) &&
            (identical(other.uvi, uvi) || other.uvi == uvi) &&
            (identical(other.clouds, clouds) || other.clouds == clouds) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility) &&
            (identical(other.windSpeed, windSpeed) ||
                other.windSpeed == windSpeed) &&
            (identical(other.windDeg, windDeg) || other.windDeg == windDeg) &&
            (identical(other.windGust, windGust) ||
                other.windGust == windGust) &&
            const DeepCollectionEquality().equals(other._weather, _weather));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      dt,
      sunrise,
      sunset,
      temp,
      feelsLike,
      pressure,
      humidity,
      dewPoint,
      uvi,
      clouds,
      visibility,
      windSpeed,
      windDeg,
      windGust,
      const DeepCollectionEquality().hash(_weather));

  @override
  String toString() {
    return 'CurrentWeather(dt: $dt, sunrise: $sunrise, sunset: $sunset, temp: $temp, feelsLike: $feelsLike, pressure: $pressure, humidity: $humidity, dewPoint: $dewPoint, uvi: $uvi, clouds: $clouds, visibility: $visibility, windSpeed: $windSpeed, windDeg: $windDeg, windGust: $windGust, weather: $weather)';
  }
}

/// @nodoc
abstract mixin class _$CurrentWeatherCopyWith<$Res>
    implements $CurrentWeatherCopyWith<$Res> {
  factory _$CurrentWeatherCopyWith(
          _CurrentWeather value, $Res Function(_CurrentWeather) _then) =
      __$CurrentWeatherCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int? dt,
      int? sunrise,
      int? sunset,
      double? temp,
      @JsonKey(name: 'feels_like') double? feelsLike,
      int? pressure,
      int? humidity,
      @JsonKey(name: 'dew_point') double? dewPoint,
      double? uvi,
      int? clouds,
      int? visibility,
      @JsonKey(name: 'wind_speed') double? windSpeed,
      @JsonKey(name: 'wind_deg') int? windDeg,
      @JsonKey(name: 'wind_gust') double? windGust,
      List<WeatherCondition>? weather});
}

/// @nodoc
class __$CurrentWeatherCopyWithImpl<$Res>
    implements _$CurrentWeatherCopyWith<$Res> {
  __$CurrentWeatherCopyWithImpl(this._self, this._then);

  final _CurrentWeather _self;
  final $Res Function(_CurrentWeather) _then;

  /// Create a copy of CurrentWeather
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? dt = freezed,
    Object? sunrise = freezed,
    Object? sunset = freezed,
    Object? temp = freezed,
    Object? feelsLike = freezed,
    Object? pressure = freezed,
    Object? humidity = freezed,
    Object? dewPoint = freezed,
    Object? uvi = freezed,
    Object? clouds = freezed,
    Object? visibility = freezed,
    Object? windSpeed = freezed,
    Object? windDeg = freezed,
    Object? windGust = freezed,
    Object? weather = freezed,
  }) {
    return _then(_CurrentWeather(
      dt: freezed == dt
          ? _self.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int?,
      sunrise: freezed == sunrise
          ? _self.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as int?,
      sunset: freezed == sunset
          ? _self.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as int?,
      temp: freezed == temp
          ? _self.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double?,
      feelsLike: freezed == feelsLike
          ? _self.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as double?,
      pressure: freezed == pressure
          ? _self.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int?,
      humidity: freezed == humidity
          ? _self.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int?,
      dewPoint: freezed == dewPoint
          ? _self.dewPoint
          : dewPoint // ignore: cast_nullable_to_non_nullable
              as double?,
      uvi: freezed == uvi
          ? _self.uvi
          : uvi // ignore: cast_nullable_to_non_nullable
              as double?,
      clouds: freezed == clouds
          ? _self.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as int?,
      visibility: freezed == visibility
          ? _self.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int?,
      windSpeed: freezed == windSpeed
          ? _self.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double?,
      windDeg: freezed == windDeg
          ? _self.windDeg
          : windDeg // ignore: cast_nullable_to_non_nullable
              as int?,
      windGust: freezed == windGust
          ? _self.windGust
          : windGust // ignore: cast_nullable_to_non_nullable
              as double?,
      weather: freezed == weather
          ? _self._weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherCondition>?,
    ));
  }
}

/// @nodoc
mixin _$HourlyWeather {
  int? get dt;
  double? get temp;
  @JsonKey(name: 'feels_like')
  double? get feelsLike;
  int? get pressure;
  int? get humidity;
  @JsonKey(name: 'dew_point')
  double? get dewPoint;
  double? get uvi;
  int? get clouds;
  int? get visibility;
  @JsonKey(name: 'wind_speed')
  double? get windSpeed;
  @JsonKey(name: 'wind_deg')
  int? get windDeg;
  @JsonKey(name: 'wind_gust')
  double? get windGust;
  List<WeatherCondition>? get weather;
  double? get pop;

  /// Create a copy of HourlyWeather
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HourlyWeatherCopyWith<HourlyWeather> get copyWith =>
      _$HourlyWeatherCopyWithImpl<HourlyWeather>(
          this as HourlyWeather, _$identity);

  /// Serializes this HourlyWeather to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HourlyWeather &&
            (identical(other.dt, dt) || other.dt == dt) &&
            (identical(other.temp, temp) || other.temp == temp) &&
            (identical(other.feelsLike, feelsLike) ||
                other.feelsLike == feelsLike) &&
            (identical(other.pressure, pressure) ||
                other.pressure == pressure) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.dewPoint, dewPoint) ||
                other.dewPoint == dewPoint) &&
            (identical(other.uvi, uvi) || other.uvi == uvi) &&
            (identical(other.clouds, clouds) || other.clouds == clouds) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility) &&
            (identical(other.windSpeed, windSpeed) ||
                other.windSpeed == windSpeed) &&
            (identical(other.windDeg, windDeg) || other.windDeg == windDeg) &&
            (identical(other.windGust, windGust) ||
                other.windGust == windGust) &&
            const DeepCollectionEquality().equals(other.weather, weather) &&
            (identical(other.pop, pop) || other.pop == pop));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      dt,
      temp,
      feelsLike,
      pressure,
      humidity,
      dewPoint,
      uvi,
      clouds,
      visibility,
      windSpeed,
      windDeg,
      windGust,
      const DeepCollectionEquality().hash(weather),
      pop);

  @override
  String toString() {
    return 'HourlyWeather(dt: $dt, temp: $temp, feelsLike: $feelsLike, pressure: $pressure, humidity: $humidity, dewPoint: $dewPoint, uvi: $uvi, clouds: $clouds, visibility: $visibility, windSpeed: $windSpeed, windDeg: $windDeg, windGust: $windGust, weather: $weather, pop: $pop)';
  }
}

/// @nodoc
abstract mixin class $HourlyWeatherCopyWith<$Res> {
  factory $HourlyWeatherCopyWith(
          HourlyWeather value, $Res Function(HourlyWeather) _then) =
      _$HourlyWeatherCopyWithImpl;
  @useResult
  $Res call(
      {int? dt,
      double? temp,
      @JsonKey(name: 'feels_like') double? feelsLike,
      int? pressure,
      int? humidity,
      @JsonKey(name: 'dew_point') double? dewPoint,
      double? uvi,
      int? clouds,
      int? visibility,
      @JsonKey(name: 'wind_speed') double? windSpeed,
      @JsonKey(name: 'wind_deg') int? windDeg,
      @JsonKey(name: 'wind_gust') double? windGust,
      List<WeatherCondition>? weather,
      double? pop});
}

/// @nodoc
class _$HourlyWeatherCopyWithImpl<$Res>
    implements $HourlyWeatherCopyWith<$Res> {
  _$HourlyWeatherCopyWithImpl(this._self, this._then);

  final HourlyWeather _self;
  final $Res Function(HourlyWeather) _then;

  /// Create a copy of HourlyWeather
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dt = freezed,
    Object? temp = freezed,
    Object? feelsLike = freezed,
    Object? pressure = freezed,
    Object? humidity = freezed,
    Object? dewPoint = freezed,
    Object? uvi = freezed,
    Object? clouds = freezed,
    Object? visibility = freezed,
    Object? windSpeed = freezed,
    Object? windDeg = freezed,
    Object? windGust = freezed,
    Object? weather = freezed,
    Object? pop = freezed,
  }) {
    return _then(_self.copyWith(
      dt: freezed == dt
          ? _self.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int?,
      temp: freezed == temp
          ? _self.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double?,
      feelsLike: freezed == feelsLike
          ? _self.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as double?,
      pressure: freezed == pressure
          ? _self.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int?,
      humidity: freezed == humidity
          ? _self.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int?,
      dewPoint: freezed == dewPoint
          ? _self.dewPoint
          : dewPoint // ignore: cast_nullable_to_non_nullable
              as double?,
      uvi: freezed == uvi
          ? _self.uvi
          : uvi // ignore: cast_nullable_to_non_nullable
              as double?,
      clouds: freezed == clouds
          ? _self.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as int?,
      visibility: freezed == visibility
          ? _self.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int?,
      windSpeed: freezed == windSpeed
          ? _self.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double?,
      windDeg: freezed == windDeg
          ? _self.windDeg
          : windDeg // ignore: cast_nullable_to_non_nullable
              as int?,
      windGust: freezed == windGust
          ? _self.windGust
          : windGust // ignore: cast_nullable_to_non_nullable
              as double?,
      weather: freezed == weather
          ? _self.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherCondition>?,
      pop: freezed == pop
          ? _self.pop
          : pop // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _HourlyWeather implements HourlyWeather {
  const _HourlyWeather(
      {this.dt,
      this.temp,
      @JsonKey(name: 'feels_like') this.feelsLike,
      this.pressure,
      this.humidity,
      @JsonKey(name: 'dew_point') this.dewPoint,
      this.uvi,
      this.clouds,
      this.visibility,
      @JsonKey(name: 'wind_speed') this.windSpeed,
      @JsonKey(name: 'wind_deg') this.windDeg,
      @JsonKey(name: 'wind_gust') this.windGust,
      final List<WeatherCondition>? weather,
      this.pop})
      : _weather = weather;
  factory _HourlyWeather.fromJson(Map<String, dynamic> json) =>
      _$HourlyWeatherFromJson(json);

  @override
  final int? dt;
  @override
  final double? temp;
  @override
  @JsonKey(name: 'feels_like')
  final double? feelsLike;
  @override
  final int? pressure;
  @override
  final int? humidity;
  @override
  @JsonKey(name: 'dew_point')
  final double? dewPoint;
  @override
  final double? uvi;
  @override
  final int? clouds;
  @override
  final int? visibility;
  @override
  @JsonKey(name: 'wind_speed')
  final double? windSpeed;
  @override
  @JsonKey(name: 'wind_deg')
  final int? windDeg;
  @override
  @JsonKey(name: 'wind_gust')
  final double? windGust;
  final List<WeatherCondition>? _weather;
  @override
  List<WeatherCondition>? get weather {
    final value = _weather;
    if (value == null) return null;
    if (_weather is EqualUnmodifiableListView) return _weather;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final double? pop;

  /// Create a copy of HourlyWeather
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$HourlyWeatherCopyWith<_HourlyWeather> get copyWith =>
      __$HourlyWeatherCopyWithImpl<_HourlyWeather>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$HourlyWeatherToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HourlyWeather &&
            (identical(other.dt, dt) || other.dt == dt) &&
            (identical(other.temp, temp) || other.temp == temp) &&
            (identical(other.feelsLike, feelsLike) ||
                other.feelsLike == feelsLike) &&
            (identical(other.pressure, pressure) ||
                other.pressure == pressure) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.dewPoint, dewPoint) ||
                other.dewPoint == dewPoint) &&
            (identical(other.uvi, uvi) || other.uvi == uvi) &&
            (identical(other.clouds, clouds) || other.clouds == clouds) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility) &&
            (identical(other.windSpeed, windSpeed) ||
                other.windSpeed == windSpeed) &&
            (identical(other.windDeg, windDeg) || other.windDeg == windDeg) &&
            (identical(other.windGust, windGust) ||
                other.windGust == windGust) &&
            const DeepCollectionEquality().equals(other._weather, _weather) &&
            (identical(other.pop, pop) || other.pop == pop));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      dt,
      temp,
      feelsLike,
      pressure,
      humidity,
      dewPoint,
      uvi,
      clouds,
      visibility,
      windSpeed,
      windDeg,
      windGust,
      const DeepCollectionEquality().hash(_weather),
      pop);

  @override
  String toString() {
    return 'HourlyWeather(dt: $dt, temp: $temp, feelsLike: $feelsLike, pressure: $pressure, humidity: $humidity, dewPoint: $dewPoint, uvi: $uvi, clouds: $clouds, visibility: $visibility, windSpeed: $windSpeed, windDeg: $windDeg, windGust: $windGust, weather: $weather, pop: $pop)';
  }
}

/// @nodoc
abstract mixin class _$HourlyWeatherCopyWith<$Res>
    implements $HourlyWeatherCopyWith<$Res> {
  factory _$HourlyWeatherCopyWith(
          _HourlyWeather value, $Res Function(_HourlyWeather) _then) =
      __$HourlyWeatherCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int? dt,
      double? temp,
      @JsonKey(name: 'feels_like') double? feelsLike,
      int? pressure,
      int? humidity,
      @JsonKey(name: 'dew_point') double? dewPoint,
      double? uvi,
      int? clouds,
      int? visibility,
      @JsonKey(name: 'wind_speed') double? windSpeed,
      @JsonKey(name: 'wind_deg') int? windDeg,
      @JsonKey(name: 'wind_gust') double? windGust,
      List<WeatherCondition>? weather,
      double? pop});
}

/// @nodoc
class __$HourlyWeatherCopyWithImpl<$Res>
    implements _$HourlyWeatherCopyWith<$Res> {
  __$HourlyWeatherCopyWithImpl(this._self, this._then);

  final _HourlyWeather _self;
  final $Res Function(_HourlyWeather) _then;

  /// Create a copy of HourlyWeather
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? dt = freezed,
    Object? temp = freezed,
    Object? feelsLike = freezed,
    Object? pressure = freezed,
    Object? humidity = freezed,
    Object? dewPoint = freezed,
    Object? uvi = freezed,
    Object? clouds = freezed,
    Object? visibility = freezed,
    Object? windSpeed = freezed,
    Object? windDeg = freezed,
    Object? windGust = freezed,
    Object? weather = freezed,
    Object? pop = freezed,
  }) {
    return _then(_HourlyWeather(
      dt: freezed == dt
          ? _self.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int?,
      temp: freezed == temp
          ? _self.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double?,
      feelsLike: freezed == feelsLike
          ? _self.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as double?,
      pressure: freezed == pressure
          ? _self.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int?,
      humidity: freezed == humidity
          ? _self.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int?,
      dewPoint: freezed == dewPoint
          ? _self.dewPoint
          : dewPoint // ignore: cast_nullable_to_non_nullable
              as double?,
      uvi: freezed == uvi
          ? _self.uvi
          : uvi // ignore: cast_nullable_to_non_nullable
              as double?,
      clouds: freezed == clouds
          ? _self.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as int?,
      visibility: freezed == visibility
          ? _self.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int?,
      windSpeed: freezed == windSpeed
          ? _self.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double?,
      windDeg: freezed == windDeg
          ? _self.windDeg
          : windDeg // ignore: cast_nullable_to_non_nullable
              as int?,
      windGust: freezed == windGust
          ? _self.windGust
          : windGust // ignore: cast_nullable_to_non_nullable
              as double?,
      weather: freezed == weather
          ? _self._weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherCondition>?,
      pop: freezed == pop
          ? _self.pop
          : pop // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
mixin _$DailyWeather {
  int? get dt;
  int? get sunrise;
  int? get sunset;
  int? get moonrise;
  int? get moonset;
  @JsonKey(name: 'moon_phase')
  double? get moonPhase;
  String? get summary;
  Temperature? get temp;
  @JsonKey(name: 'feels_like')
  FeelsLike? get feelsLike;
  int? get pressure;
  int? get humidity;
  @JsonKey(name: 'dew_point')
  double? get dewPoint;
  @JsonKey(name: 'wind_speed')
  double? get windSpeed;
  @JsonKey(name: 'wind_deg')
  int? get windDeg;
  @JsonKey(name: 'wind_gust')
  double? get windGust;
  List<WeatherCondition>? get weather;
  int? get clouds;
  double? get pop; // Probability of precipitation (can also be in daily)
  double? get uvi;

  /// Create a copy of DailyWeather
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DailyWeatherCopyWith<DailyWeather> get copyWith =>
      _$DailyWeatherCopyWithImpl<DailyWeather>(
          this as DailyWeather, _$identity);

  /// Serializes this DailyWeather to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DailyWeather &&
            (identical(other.dt, dt) || other.dt == dt) &&
            (identical(other.sunrise, sunrise) || other.sunrise == sunrise) &&
            (identical(other.sunset, sunset) || other.sunset == sunset) &&
            (identical(other.moonrise, moonrise) ||
                other.moonrise == moonrise) &&
            (identical(other.moonset, moonset) || other.moonset == moonset) &&
            (identical(other.moonPhase, moonPhase) ||
                other.moonPhase == moonPhase) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.temp, temp) || other.temp == temp) &&
            (identical(other.feelsLike, feelsLike) ||
                other.feelsLike == feelsLike) &&
            (identical(other.pressure, pressure) ||
                other.pressure == pressure) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.dewPoint, dewPoint) ||
                other.dewPoint == dewPoint) &&
            (identical(other.windSpeed, windSpeed) ||
                other.windSpeed == windSpeed) &&
            (identical(other.windDeg, windDeg) || other.windDeg == windDeg) &&
            (identical(other.windGust, windGust) ||
                other.windGust == windGust) &&
            const DeepCollectionEquality().equals(other.weather, weather) &&
            (identical(other.clouds, clouds) || other.clouds == clouds) &&
            (identical(other.pop, pop) || other.pop == pop) &&
            (identical(other.uvi, uvi) || other.uvi == uvi));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        dt,
        sunrise,
        sunset,
        moonrise,
        moonset,
        moonPhase,
        summary,
        temp,
        feelsLike,
        pressure,
        humidity,
        dewPoint,
        windSpeed,
        windDeg,
        windGust,
        const DeepCollectionEquality().hash(weather),
        clouds,
        pop,
        uvi
      ]);

  @override
  String toString() {
    return 'DailyWeather(dt: $dt, sunrise: $sunrise, sunset: $sunset, moonrise: $moonrise, moonset: $moonset, moonPhase: $moonPhase, summary: $summary, temp: $temp, feelsLike: $feelsLike, pressure: $pressure, humidity: $humidity, dewPoint: $dewPoint, windSpeed: $windSpeed, windDeg: $windDeg, windGust: $windGust, weather: $weather, clouds: $clouds, pop: $pop, uvi: $uvi)';
  }
}

/// @nodoc
abstract mixin class $DailyWeatherCopyWith<$Res> {
  factory $DailyWeatherCopyWith(
          DailyWeather value, $Res Function(DailyWeather) _then) =
      _$DailyWeatherCopyWithImpl;
  @useResult
  $Res call(
      {int? dt,
      int? sunrise,
      int? sunset,
      int? moonrise,
      int? moonset,
      @JsonKey(name: 'moon_phase') double? moonPhase,
      String? summary,
      Temperature? temp,
      @JsonKey(name: 'feels_like') FeelsLike? feelsLike,
      int? pressure,
      int? humidity,
      @JsonKey(name: 'dew_point') double? dewPoint,
      @JsonKey(name: 'wind_speed') double? windSpeed,
      @JsonKey(name: 'wind_deg') int? windDeg,
      @JsonKey(name: 'wind_gust') double? windGust,
      List<WeatherCondition>? weather,
      int? clouds,
      double? pop,
      double? uvi});

  $TemperatureCopyWith<$Res>? get temp;
  $FeelsLikeCopyWith<$Res>? get feelsLike;
}

/// @nodoc
class _$DailyWeatherCopyWithImpl<$Res> implements $DailyWeatherCopyWith<$Res> {
  _$DailyWeatherCopyWithImpl(this._self, this._then);

  final DailyWeather _self;
  final $Res Function(DailyWeather) _then;

  /// Create a copy of DailyWeather
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dt = freezed,
    Object? sunrise = freezed,
    Object? sunset = freezed,
    Object? moonrise = freezed,
    Object? moonset = freezed,
    Object? moonPhase = freezed,
    Object? summary = freezed,
    Object? temp = freezed,
    Object? feelsLike = freezed,
    Object? pressure = freezed,
    Object? humidity = freezed,
    Object? dewPoint = freezed,
    Object? windSpeed = freezed,
    Object? windDeg = freezed,
    Object? windGust = freezed,
    Object? weather = freezed,
    Object? clouds = freezed,
    Object? pop = freezed,
    Object? uvi = freezed,
  }) {
    return _then(_self.copyWith(
      dt: freezed == dt
          ? _self.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int?,
      sunrise: freezed == sunrise
          ? _self.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as int?,
      sunset: freezed == sunset
          ? _self.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as int?,
      moonrise: freezed == moonrise
          ? _self.moonrise
          : moonrise // ignore: cast_nullable_to_non_nullable
              as int?,
      moonset: freezed == moonset
          ? _self.moonset
          : moonset // ignore: cast_nullable_to_non_nullable
              as int?,
      moonPhase: freezed == moonPhase
          ? _self.moonPhase
          : moonPhase // ignore: cast_nullable_to_non_nullable
              as double?,
      summary: freezed == summary
          ? _self.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      temp: freezed == temp
          ? _self.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as Temperature?,
      feelsLike: freezed == feelsLike
          ? _self.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as FeelsLike?,
      pressure: freezed == pressure
          ? _self.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int?,
      humidity: freezed == humidity
          ? _self.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int?,
      dewPoint: freezed == dewPoint
          ? _self.dewPoint
          : dewPoint // ignore: cast_nullable_to_non_nullable
              as double?,
      windSpeed: freezed == windSpeed
          ? _self.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double?,
      windDeg: freezed == windDeg
          ? _self.windDeg
          : windDeg // ignore: cast_nullable_to_non_nullable
              as int?,
      windGust: freezed == windGust
          ? _self.windGust
          : windGust // ignore: cast_nullable_to_non_nullable
              as double?,
      weather: freezed == weather
          ? _self.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherCondition>?,
      clouds: freezed == clouds
          ? _self.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as int?,
      pop: freezed == pop
          ? _self.pop
          : pop // ignore: cast_nullable_to_non_nullable
              as double?,
      uvi: freezed == uvi
          ? _self.uvi
          : uvi // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }

  /// Create a copy of DailyWeather
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TemperatureCopyWith<$Res>? get temp {
    if (_self.temp == null) {
      return null;
    }

    return $TemperatureCopyWith<$Res>(_self.temp!, (value) {
      return _then(_self.copyWith(temp: value));
    });
  }

  /// Create a copy of DailyWeather
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FeelsLikeCopyWith<$Res>? get feelsLike {
    if (_self.feelsLike == null) {
      return null;
    }

    return $FeelsLikeCopyWith<$Res>(_self.feelsLike!, (value) {
      return _then(_self.copyWith(feelsLike: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _DailyWeather implements DailyWeather {
  const _DailyWeather(
      {this.dt,
      this.sunrise,
      this.sunset,
      this.moonrise,
      this.moonset,
      @JsonKey(name: 'moon_phase') this.moonPhase,
      this.summary,
      this.temp,
      @JsonKey(name: 'feels_like') this.feelsLike,
      this.pressure,
      this.humidity,
      @JsonKey(name: 'dew_point') this.dewPoint,
      @JsonKey(name: 'wind_speed') this.windSpeed,
      @JsonKey(name: 'wind_deg') this.windDeg,
      @JsonKey(name: 'wind_gust') this.windGust,
      final List<WeatherCondition>? weather,
      this.clouds,
      this.pop,
      this.uvi})
      : _weather = weather;
  factory _DailyWeather.fromJson(Map<String, dynamic> json) =>
      _$DailyWeatherFromJson(json);

  @override
  final int? dt;
  @override
  final int? sunrise;
  @override
  final int? sunset;
  @override
  final int? moonrise;
  @override
  final int? moonset;
  @override
  @JsonKey(name: 'moon_phase')
  final double? moonPhase;
  @override
  final String? summary;
  @override
  final Temperature? temp;
  @override
  @JsonKey(name: 'feels_like')
  final FeelsLike? feelsLike;
  @override
  final int? pressure;
  @override
  final int? humidity;
  @override
  @JsonKey(name: 'dew_point')
  final double? dewPoint;
  @override
  @JsonKey(name: 'wind_speed')
  final double? windSpeed;
  @override
  @JsonKey(name: 'wind_deg')
  final int? windDeg;
  @override
  @JsonKey(name: 'wind_gust')
  final double? windGust;
  final List<WeatherCondition>? _weather;
  @override
  List<WeatherCondition>? get weather {
    final value = _weather;
    if (value == null) return null;
    if (_weather is EqualUnmodifiableListView) return _weather;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? clouds;
  @override
  final double? pop;
// Probability of precipitation (can also be in daily)
  @override
  final double? uvi;

  /// Create a copy of DailyWeather
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DailyWeatherCopyWith<_DailyWeather> get copyWith =>
      __$DailyWeatherCopyWithImpl<_DailyWeather>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DailyWeatherToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DailyWeather &&
            (identical(other.dt, dt) || other.dt == dt) &&
            (identical(other.sunrise, sunrise) || other.sunrise == sunrise) &&
            (identical(other.sunset, sunset) || other.sunset == sunset) &&
            (identical(other.moonrise, moonrise) ||
                other.moonrise == moonrise) &&
            (identical(other.moonset, moonset) || other.moonset == moonset) &&
            (identical(other.moonPhase, moonPhase) ||
                other.moonPhase == moonPhase) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.temp, temp) || other.temp == temp) &&
            (identical(other.feelsLike, feelsLike) ||
                other.feelsLike == feelsLike) &&
            (identical(other.pressure, pressure) ||
                other.pressure == pressure) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.dewPoint, dewPoint) ||
                other.dewPoint == dewPoint) &&
            (identical(other.windSpeed, windSpeed) ||
                other.windSpeed == windSpeed) &&
            (identical(other.windDeg, windDeg) || other.windDeg == windDeg) &&
            (identical(other.windGust, windGust) ||
                other.windGust == windGust) &&
            const DeepCollectionEquality().equals(other._weather, _weather) &&
            (identical(other.clouds, clouds) || other.clouds == clouds) &&
            (identical(other.pop, pop) || other.pop == pop) &&
            (identical(other.uvi, uvi) || other.uvi == uvi));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        dt,
        sunrise,
        sunset,
        moonrise,
        moonset,
        moonPhase,
        summary,
        temp,
        feelsLike,
        pressure,
        humidity,
        dewPoint,
        windSpeed,
        windDeg,
        windGust,
        const DeepCollectionEquality().hash(_weather),
        clouds,
        pop,
        uvi
      ]);

  @override
  String toString() {
    return 'DailyWeather(dt: $dt, sunrise: $sunrise, sunset: $sunset, moonrise: $moonrise, moonset: $moonset, moonPhase: $moonPhase, summary: $summary, temp: $temp, feelsLike: $feelsLike, pressure: $pressure, humidity: $humidity, dewPoint: $dewPoint, windSpeed: $windSpeed, windDeg: $windDeg, windGust: $windGust, weather: $weather, clouds: $clouds, pop: $pop, uvi: $uvi)';
  }
}

/// @nodoc
abstract mixin class _$DailyWeatherCopyWith<$Res>
    implements $DailyWeatherCopyWith<$Res> {
  factory _$DailyWeatherCopyWith(
          _DailyWeather value, $Res Function(_DailyWeather) _then) =
      __$DailyWeatherCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int? dt,
      int? sunrise,
      int? sunset,
      int? moonrise,
      int? moonset,
      @JsonKey(name: 'moon_phase') double? moonPhase,
      String? summary,
      Temperature? temp,
      @JsonKey(name: 'feels_like') FeelsLike? feelsLike,
      int? pressure,
      int? humidity,
      @JsonKey(name: 'dew_point') double? dewPoint,
      @JsonKey(name: 'wind_speed') double? windSpeed,
      @JsonKey(name: 'wind_deg') int? windDeg,
      @JsonKey(name: 'wind_gust') double? windGust,
      List<WeatherCondition>? weather,
      int? clouds,
      double? pop,
      double? uvi});

  @override
  $TemperatureCopyWith<$Res>? get temp;
  @override
  $FeelsLikeCopyWith<$Res>? get feelsLike;
}

/// @nodoc
class __$DailyWeatherCopyWithImpl<$Res>
    implements _$DailyWeatherCopyWith<$Res> {
  __$DailyWeatherCopyWithImpl(this._self, this._then);

  final _DailyWeather _self;
  final $Res Function(_DailyWeather) _then;

  /// Create a copy of DailyWeather
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? dt = freezed,
    Object? sunrise = freezed,
    Object? sunset = freezed,
    Object? moonrise = freezed,
    Object? moonset = freezed,
    Object? moonPhase = freezed,
    Object? summary = freezed,
    Object? temp = freezed,
    Object? feelsLike = freezed,
    Object? pressure = freezed,
    Object? humidity = freezed,
    Object? dewPoint = freezed,
    Object? windSpeed = freezed,
    Object? windDeg = freezed,
    Object? windGust = freezed,
    Object? weather = freezed,
    Object? clouds = freezed,
    Object? pop = freezed,
    Object? uvi = freezed,
  }) {
    return _then(_DailyWeather(
      dt: freezed == dt
          ? _self.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int?,
      sunrise: freezed == sunrise
          ? _self.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as int?,
      sunset: freezed == sunset
          ? _self.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as int?,
      moonrise: freezed == moonrise
          ? _self.moonrise
          : moonrise // ignore: cast_nullable_to_non_nullable
              as int?,
      moonset: freezed == moonset
          ? _self.moonset
          : moonset // ignore: cast_nullable_to_non_nullable
              as int?,
      moonPhase: freezed == moonPhase
          ? _self.moonPhase
          : moonPhase // ignore: cast_nullable_to_non_nullable
              as double?,
      summary: freezed == summary
          ? _self.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      temp: freezed == temp
          ? _self.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as Temperature?,
      feelsLike: freezed == feelsLike
          ? _self.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as FeelsLike?,
      pressure: freezed == pressure
          ? _self.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int?,
      humidity: freezed == humidity
          ? _self.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int?,
      dewPoint: freezed == dewPoint
          ? _self.dewPoint
          : dewPoint // ignore: cast_nullable_to_non_nullable
              as double?,
      windSpeed: freezed == windSpeed
          ? _self.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double?,
      windDeg: freezed == windDeg
          ? _self.windDeg
          : windDeg // ignore: cast_nullable_to_non_nullable
              as int?,
      windGust: freezed == windGust
          ? _self.windGust
          : windGust // ignore: cast_nullable_to_non_nullable
              as double?,
      weather: freezed == weather
          ? _self._weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherCondition>?,
      clouds: freezed == clouds
          ? _self.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as int?,
      pop: freezed == pop
          ? _self.pop
          : pop // ignore: cast_nullable_to_non_nullable
              as double?,
      uvi: freezed == uvi
          ? _self.uvi
          : uvi // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }

  /// Create a copy of DailyWeather
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TemperatureCopyWith<$Res>? get temp {
    if (_self.temp == null) {
      return null;
    }

    return $TemperatureCopyWith<$Res>(_self.temp!, (value) {
      return _then(_self.copyWith(temp: value));
    });
  }

  /// Create a copy of DailyWeather
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FeelsLikeCopyWith<$Res>? get feelsLike {
    if (_self.feelsLike == null) {
      return null;
    }

    return $FeelsLikeCopyWith<$Res>(_self.feelsLike!, (value) {
      return _then(_self.copyWith(feelsLike: value));
    });
  }
}

/// @nodoc
mixin _$Temperature {
  double? get day;
  double? get min;
  double? get max;
  double? get night;
  double? get eve;
  double? get morn;

  /// Create a copy of Temperature
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TemperatureCopyWith<Temperature> get copyWith =>
      _$TemperatureCopyWithImpl<Temperature>(this as Temperature, _$identity);

  /// Serializes this Temperature to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Temperature &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.min, min) || other.min == min) &&
            (identical(other.max, max) || other.max == max) &&
            (identical(other.night, night) || other.night == night) &&
            (identical(other.eve, eve) || other.eve == eve) &&
            (identical(other.morn, morn) || other.morn == morn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, day, min, max, night, eve, morn);

  @override
  String toString() {
    return 'Temperature(day: $day, min: $min, max: $max, night: $night, eve: $eve, morn: $morn)';
  }
}

/// @nodoc
abstract mixin class $TemperatureCopyWith<$Res> {
  factory $TemperatureCopyWith(
          Temperature value, $Res Function(Temperature) _then) =
      _$TemperatureCopyWithImpl;
  @useResult
  $Res call(
      {double? day,
      double? min,
      double? max,
      double? night,
      double? eve,
      double? morn});
}

/// @nodoc
class _$TemperatureCopyWithImpl<$Res> implements $TemperatureCopyWith<$Res> {
  _$TemperatureCopyWithImpl(this._self, this._then);

  final Temperature _self;
  final $Res Function(Temperature) _then;

  /// Create a copy of Temperature
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = freezed,
    Object? min = freezed,
    Object? max = freezed,
    Object? night = freezed,
    Object? eve = freezed,
    Object? morn = freezed,
  }) {
    return _then(_self.copyWith(
      day: freezed == day
          ? _self.day
          : day // ignore: cast_nullable_to_non_nullable
              as double?,
      min: freezed == min
          ? _self.min
          : min // ignore: cast_nullable_to_non_nullable
              as double?,
      max: freezed == max
          ? _self.max
          : max // ignore: cast_nullable_to_non_nullable
              as double?,
      night: freezed == night
          ? _self.night
          : night // ignore: cast_nullable_to_non_nullable
              as double?,
      eve: freezed == eve
          ? _self.eve
          : eve // ignore: cast_nullable_to_non_nullable
              as double?,
      morn: freezed == morn
          ? _self.morn
          : morn // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Temperature implements Temperature {
  const _Temperature(
      {this.day, this.min, this.max, this.night, this.eve, this.morn});
  factory _Temperature.fromJson(Map<String, dynamic> json) =>
      _$TemperatureFromJson(json);

  @override
  final double? day;
  @override
  final double? min;
  @override
  final double? max;
  @override
  final double? night;
  @override
  final double? eve;
  @override
  final double? morn;

  /// Create a copy of Temperature
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TemperatureCopyWith<_Temperature> get copyWith =>
      __$TemperatureCopyWithImpl<_Temperature>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TemperatureToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Temperature &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.min, min) || other.min == min) &&
            (identical(other.max, max) || other.max == max) &&
            (identical(other.night, night) || other.night == night) &&
            (identical(other.eve, eve) || other.eve == eve) &&
            (identical(other.morn, morn) || other.morn == morn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, day, min, max, night, eve, morn);

  @override
  String toString() {
    return 'Temperature(day: $day, min: $min, max: $max, night: $night, eve: $eve, morn: $morn)';
  }
}

/// @nodoc
abstract mixin class _$TemperatureCopyWith<$Res>
    implements $TemperatureCopyWith<$Res> {
  factory _$TemperatureCopyWith(
          _Temperature value, $Res Function(_Temperature) _then) =
      __$TemperatureCopyWithImpl;
  @override
  @useResult
  $Res call(
      {double? day,
      double? min,
      double? max,
      double? night,
      double? eve,
      double? morn});
}

/// @nodoc
class __$TemperatureCopyWithImpl<$Res> implements _$TemperatureCopyWith<$Res> {
  __$TemperatureCopyWithImpl(this._self, this._then);

  final _Temperature _self;
  final $Res Function(_Temperature) _then;

  /// Create a copy of Temperature
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? day = freezed,
    Object? min = freezed,
    Object? max = freezed,
    Object? night = freezed,
    Object? eve = freezed,
    Object? morn = freezed,
  }) {
    return _then(_Temperature(
      day: freezed == day
          ? _self.day
          : day // ignore: cast_nullable_to_non_nullable
              as double?,
      min: freezed == min
          ? _self.min
          : min // ignore: cast_nullable_to_non_nullable
              as double?,
      max: freezed == max
          ? _self.max
          : max // ignore: cast_nullable_to_non_nullable
              as double?,
      night: freezed == night
          ? _self.night
          : night // ignore: cast_nullable_to_non_nullable
              as double?,
      eve: freezed == eve
          ? _self.eve
          : eve // ignore: cast_nullable_to_non_nullable
              as double?,
      morn: freezed == morn
          ? _self.morn
          : morn // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
mixin _$FeelsLike {
  double? get day;
  double? get night;
  double? get eve;
  double? get morn;

  /// Create a copy of FeelsLike
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FeelsLikeCopyWith<FeelsLike> get copyWith =>
      _$FeelsLikeCopyWithImpl<FeelsLike>(this as FeelsLike, _$identity);

  /// Serializes this FeelsLike to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FeelsLike &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.night, night) || other.night == night) &&
            (identical(other.eve, eve) || other.eve == eve) &&
            (identical(other.morn, morn) || other.morn == morn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, day, night, eve, morn);

  @override
  String toString() {
    return 'FeelsLike(day: $day, night: $night, eve: $eve, morn: $morn)';
  }
}

/// @nodoc
abstract mixin class $FeelsLikeCopyWith<$Res> {
  factory $FeelsLikeCopyWith(FeelsLike value, $Res Function(FeelsLike) _then) =
      _$FeelsLikeCopyWithImpl;
  @useResult
  $Res call({double? day, double? night, double? eve, double? morn});
}

/// @nodoc
class _$FeelsLikeCopyWithImpl<$Res> implements $FeelsLikeCopyWith<$Res> {
  _$FeelsLikeCopyWithImpl(this._self, this._then);

  final FeelsLike _self;
  final $Res Function(FeelsLike) _then;

  /// Create a copy of FeelsLike
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = freezed,
    Object? night = freezed,
    Object? eve = freezed,
    Object? morn = freezed,
  }) {
    return _then(_self.copyWith(
      day: freezed == day
          ? _self.day
          : day // ignore: cast_nullable_to_non_nullable
              as double?,
      night: freezed == night
          ? _self.night
          : night // ignore: cast_nullable_to_non_nullable
              as double?,
      eve: freezed == eve
          ? _self.eve
          : eve // ignore: cast_nullable_to_non_nullable
              as double?,
      morn: freezed == morn
          ? _self.morn
          : morn // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _FeelsLike implements FeelsLike {
  const _FeelsLike({this.day, this.night, this.eve, this.morn});
  factory _FeelsLike.fromJson(Map<String, dynamic> json) =>
      _$FeelsLikeFromJson(json);

  @override
  final double? day;
  @override
  final double? night;
  @override
  final double? eve;
  @override
  final double? morn;

  /// Create a copy of FeelsLike
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FeelsLikeCopyWith<_FeelsLike> get copyWith =>
      __$FeelsLikeCopyWithImpl<_FeelsLike>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FeelsLikeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FeelsLike &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.night, night) || other.night == night) &&
            (identical(other.eve, eve) || other.eve == eve) &&
            (identical(other.morn, morn) || other.morn == morn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, day, night, eve, morn);

  @override
  String toString() {
    return 'FeelsLike(day: $day, night: $night, eve: $eve, morn: $morn)';
  }
}

/// @nodoc
abstract mixin class _$FeelsLikeCopyWith<$Res>
    implements $FeelsLikeCopyWith<$Res> {
  factory _$FeelsLikeCopyWith(
          _FeelsLike value, $Res Function(_FeelsLike) _then) =
      __$FeelsLikeCopyWithImpl;
  @override
  @useResult
  $Res call({double? day, double? night, double? eve, double? morn});
}

/// @nodoc
class __$FeelsLikeCopyWithImpl<$Res> implements _$FeelsLikeCopyWith<$Res> {
  __$FeelsLikeCopyWithImpl(this._self, this._then);

  final _FeelsLike _self;
  final $Res Function(_FeelsLike) _then;

  /// Create a copy of FeelsLike
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? day = freezed,
    Object? night = freezed,
    Object? eve = freezed,
    Object? morn = freezed,
  }) {
    return _then(_FeelsLike(
      day: freezed == day
          ? _self.day
          : day // ignore: cast_nullable_to_non_nullable
              as double?,
      night: freezed == night
          ? _self.night
          : night // ignore: cast_nullable_to_non_nullable
              as double?,
      eve: freezed == eve
          ? _self.eve
          : eve // ignore: cast_nullable_to_non_nullable
              as double?,
      morn: freezed == morn
          ? _self.morn
          : morn // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
mixin _$WeatherCondition {
  int? get id;
  String? get main;
  String? get description;
  String? get icon;

  /// Create a copy of WeatherCondition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WeatherConditionCopyWith<WeatherCondition> get copyWith =>
      _$WeatherConditionCopyWithImpl<WeatherCondition>(
          this as WeatherCondition, _$identity);

  /// Serializes this WeatherCondition to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WeatherCondition &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.main, main) || other.main == main) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, main, description, icon);

  @override
  String toString() {
    return 'WeatherCondition(id: $id, main: $main, description: $description, icon: $icon)';
  }
}

/// @nodoc
abstract mixin class $WeatherConditionCopyWith<$Res> {
  factory $WeatherConditionCopyWith(
          WeatherCondition value, $Res Function(WeatherCondition) _then) =
      _$WeatherConditionCopyWithImpl;
  @useResult
  $Res call({int? id, String? main, String? description, String? icon});
}

/// @nodoc
class _$WeatherConditionCopyWithImpl<$Res>
    implements $WeatherConditionCopyWith<$Res> {
  _$WeatherConditionCopyWithImpl(this._self, this._then);

  final WeatherCondition _self;
  final $Res Function(WeatherCondition) _then;

  /// Create a copy of WeatherCondition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? main = freezed,
    Object? description = freezed,
    Object? icon = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      main: freezed == main
          ? _self.main
          : main // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _self.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _WeatherCondition implements WeatherCondition {
  const _WeatherCondition({this.id, this.main, this.description, this.icon});
  factory _WeatherCondition.fromJson(Map<String, dynamic> json) =>
      _$WeatherConditionFromJson(json);

  @override
  final int? id;
  @override
  final String? main;
  @override
  final String? description;
  @override
  final String? icon;

  /// Create a copy of WeatherCondition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WeatherConditionCopyWith<_WeatherCondition> get copyWith =>
      __$WeatherConditionCopyWithImpl<_WeatherCondition>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WeatherConditionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WeatherCondition &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.main, main) || other.main == main) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, main, description, icon);

  @override
  String toString() {
    return 'WeatherCondition(id: $id, main: $main, description: $description, icon: $icon)';
  }
}

/// @nodoc
abstract mixin class _$WeatherConditionCopyWith<$Res>
    implements $WeatherConditionCopyWith<$Res> {
  factory _$WeatherConditionCopyWith(
          _WeatherCondition value, $Res Function(_WeatherCondition) _then) =
      __$WeatherConditionCopyWithImpl;
  @override
  @useResult
  $Res call({int? id, String? main, String? description, String? icon});
}

/// @nodoc
class __$WeatherConditionCopyWithImpl<$Res>
    implements _$WeatherConditionCopyWith<$Res> {
  __$WeatherConditionCopyWithImpl(this._self, this._then);

  final _WeatherCondition _self;
  final $Res Function(_WeatherCondition) _then;

  /// Create a copy of WeatherCondition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? main = freezed,
    Object? description = freezed,
    Object? icon = freezed,
  }) {
    return _then(_WeatherCondition(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      main: freezed == main
          ? _self.main
          : main // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _self.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
