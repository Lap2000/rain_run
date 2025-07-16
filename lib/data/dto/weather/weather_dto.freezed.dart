// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WeatherDTO {
  double? get lat;
  double? get lon;
  String? get timezone;
  int? get timezoneOffset;
  CurrentWeatherDTO? get current;
  List<HourlyWeatherDTO>? get hourly;
  List<DailyWeatherDTO>? get daily;

  /// Create a copy of WeatherDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WeatherDTOCopyWith<WeatherDTO> get copyWith =>
      _$WeatherDTOCopyWithImpl<WeatherDTO>(this as WeatherDTO, _$identity);

  /// Serializes this WeatherDTO to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WeatherDTO &&
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
    return 'WeatherDTO(lat: $lat, lon: $lon, timezone: $timezone, timezoneOffset: $timezoneOffset, current: $current, hourly: $hourly, daily: $daily)';
  }
}

/// @nodoc
abstract mixin class $WeatherDTOCopyWith<$Res> {
  factory $WeatherDTOCopyWith(
          WeatherDTO value, $Res Function(WeatherDTO) _then) =
      _$WeatherDTOCopyWithImpl;
  @useResult
  $Res call(
      {double? lat,
      double? lon,
      String? timezone,
      int? timezoneOffset,
      CurrentWeatherDTO? current,
      List<HourlyWeatherDTO>? hourly,
      List<DailyWeatherDTO>? daily});

  $CurrentWeatherDTOCopyWith<$Res>? get current;
}

/// @nodoc
class _$WeatherDTOCopyWithImpl<$Res> implements $WeatherDTOCopyWith<$Res> {
  _$WeatherDTOCopyWithImpl(this._self, this._then);

  final WeatherDTO _self;
  final $Res Function(WeatherDTO) _then;

  /// Create a copy of WeatherDTO
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
              as CurrentWeatherDTO?,
      hourly: freezed == hourly
          ? _self.hourly
          : hourly // ignore: cast_nullable_to_non_nullable
              as List<HourlyWeatherDTO>?,
      daily: freezed == daily
          ? _self.daily
          : daily // ignore: cast_nullable_to_non_nullable
              as List<DailyWeatherDTO>?,
    ));
  }

  /// Create a copy of WeatherDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CurrentWeatherDTOCopyWith<$Res>? get current {
    if (_self.current == null) {
      return null;
    }

    return $CurrentWeatherDTOCopyWith<$Res>(_self.current!, (value) {
      return _then(_self.copyWith(current: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _WeatherDTO implements WeatherDTO {
  const _WeatherDTO(
      {this.lat,
      this.lon,
      this.timezone,
      this.timezoneOffset,
      this.current,
      final List<HourlyWeatherDTO>? hourly,
      final List<DailyWeatherDTO>? daily})
      : _hourly = hourly,
        _daily = daily;
  factory _WeatherDTO.fromJson(Map<String, dynamic> json) =>
      _$WeatherDTOFromJson(json);

  @override
  final double? lat;
  @override
  final double? lon;
  @override
  final String? timezone;
  @override
  final int? timezoneOffset;
  @override
  final CurrentWeatherDTO? current;
  final List<HourlyWeatherDTO>? _hourly;
  @override
  List<HourlyWeatherDTO>? get hourly {
    final value = _hourly;
    if (value == null) return null;
    if (_hourly is EqualUnmodifiableListView) return _hourly;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<DailyWeatherDTO>? _daily;
  @override
  List<DailyWeatherDTO>? get daily {
    final value = _daily;
    if (value == null) return null;
    if (_daily is EqualUnmodifiableListView) return _daily;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of WeatherDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WeatherDTOCopyWith<_WeatherDTO> get copyWith =>
      __$WeatherDTOCopyWithImpl<_WeatherDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WeatherDTOToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WeatherDTO &&
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
    return 'WeatherDTO(lat: $lat, lon: $lon, timezone: $timezone, timezoneOffset: $timezoneOffset, current: $current, hourly: $hourly, daily: $daily)';
  }
}

/// @nodoc
abstract mixin class _$WeatherDTOCopyWith<$Res>
    implements $WeatherDTOCopyWith<$Res> {
  factory _$WeatherDTOCopyWith(
          _WeatherDTO value, $Res Function(_WeatherDTO) _then) =
      __$WeatherDTOCopyWithImpl;
  @override
  @useResult
  $Res call(
      {double? lat,
      double? lon,
      String? timezone,
      int? timezoneOffset,
      CurrentWeatherDTO? current,
      List<HourlyWeatherDTO>? hourly,
      List<DailyWeatherDTO>? daily});

  @override
  $CurrentWeatherDTOCopyWith<$Res>? get current;
}

/// @nodoc
class __$WeatherDTOCopyWithImpl<$Res> implements _$WeatherDTOCopyWith<$Res> {
  __$WeatherDTOCopyWithImpl(this._self, this._then);

  final _WeatherDTO _self;
  final $Res Function(_WeatherDTO) _then;

  /// Create a copy of WeatherDTO
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
    return _then(_WeatherDTO(
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
              as CurrentWeatherDTO?,
      hourly: freezed == hourly
          ? _self._hourly
          : hourly // ignore: cast_nullable_to_non_nullable
              as List<HourlyWeatherDTO>?,
      daily: freezed == daily
          ? _self._daily
          : daily // ignore: cast_nullable_to_non_nullable
              as List<DailyWeatherDTO>?,
    ));
  }

  /// Create a copy of WeatherDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CurrentWeatherDTOCopyWith<$Res>? get current {
    if (_self.current == null) {
      return null;
    }

    return $CurrentWeatherDTOCopyWith<$Res>(_self.current!, (value) {
      return _then(_self.copyWith(current: value));
    });
  }
}

/// @nodoc
mixin _$CurrentWeatherDTO {
  int? get dt;
  int? get sunrise;
  int? get sunset;
  double? get temp;
  @JsonKey(name: 'feels_like')
  double? get feelsLike;
  int? get pressure;
  int? get humidity;
  @JsonKey(name: 'dew_point')
  int? get dewPoint;
  double? get uvi;
  int? get clouds;
  int? get visibility;
  @JsonKey(name: 'wind_speed')
  double? get windSpeed;
  @JsonKey(name: 'wind_deg')
  int? get windDeg;
  @JsonKey(name: 'wind_gust')
  double? get windGust;
  List<WeatherConditionDTO>? get weather;
  Rain1HDTO? get rain;

  /// Create a copy of CurrentWeatherDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CurrentWeatherDTOCopyWith<CurrentWeatherDTO> get copyWith =>
      _$CurrentWeatherDTOCopyWithImpl<CurrentWeatherDTO>(
          this as CurrentWeatherDTO, _$identity);

  /// Serializes this CurrentWeatherDTO to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CurrentWeatherDTO &&
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
            const DeepCollectionEquality().equals(other.weather, weather) &&
            (identical(other.rain, rain) || other.rain == rain));
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
      const DeepCollectionEquality().hash(weather),
      rain);

  @override
  String toString() {
    return 'CurrentWeatherDTO(dt: $dt, sunrise: $sunrise, sunset: $sunset, temp: $temp, feelsLike: $feelsLike, pressure: $pressure, humidity: $humidity, dewPoint: $dewPoint, uvi: $uvi, clouds: $clouds, visibility: $visibility, windSpeed: $windSpeed, windDeg: $windDeg, windGust: $windGust, weather: $weather, rain: $rain)';
  }
}

/// @nodoc
abstract mixin class $CurrentWeatherDTOCopyWith<$Res> {
  factory $CurrentWeatherDTOCopyWith(
          CurrentWeatherDTO value, $Res Function(CurrentWeatherDTO) _then) =
      _$CurrentWeatherDTOCopyWithImpl;
  @useResult
  $Res call(
      {int? dt,
      int? sunrise,
      int? sunset,
      double? temp,
      @JsonKey(name: 'feels_like') double? feelsLike,
      int? pressure,
      int? humidity,
      @JsonKey(name: 'dew_point') int? dewPoint,
      double? uvi,
      int? clouds,
      int? visibility,
      @JsonKey(name: 'wind_speed') double? windSpeed,
      @JsonKey(name: 'wind_deg') int? windDeg,
      @JsonKey(name: 'wind_gust') double? windGust,
      List<WeatherConditionDTO>? weather,
      Rain1HDTO? rain});

  $Rain1HDTOCopyWith<$Res>? get rain;
}

/// @nodoc
class _$CurrentWeatherDTOCopyWithImpl<$Res>
    implements $CurrentWeatherDTOCopyWith<$Res> {
  _$CurrentWeatherDTOCopyWithImpl(this._self, this._then);

  final CurrentWeatherDTO _self;
  final $Res Function(CurrentWeatherDTO) _then;

  /// Create a copy of CurrentWeatherDTO
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
    Object? rain = freezed,
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
              as int?,
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
              as List<WeatherConditionDTO>?,
      rain: freezed == rain
          ? _self.rain
          : rain // ignore: cast_nullable_to_non_nullable
              as Rain1HDTO?,
    ));
  }

  /// Create a copy of CurrentWeatherDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Rain1HDTOCopyWith<$Res>? get rain {
    if (_self.rain == null) {
      return null;
    }

    return $Rain1HDTOCopyWith<$Res>(_self.rain!, (value) {
      return _then(_self.copyWith(rain: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _CurrentWeatherDTO implements CurrentWeatherDTO {
  const _CurrentWeatherDTO(
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
      final List<WeatherConditionDTO>? weather,
      this.rain})
      : _weather = weather;
  factory _CurrentWeatherDTO.fromJson(Map<String, dynamic> json) =>
      _$CurrentWeatherDTOFromJson(json);

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
  final int? dewPoint;
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
  final List<WeatherConditionDTO>? _weather;
  @override
  List<WeatherConditionDTO>? get weather {
    final value = _weather;
    if (value == null) return null;
    if (_weather is EqualUnmodifiableListView) return _weather;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Rain1HDTO? rain;

  /// Create a copy of CurrentWeatherDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CurrentWeatherDTOCopyWith<_CurrentWeatherDTO> get copyWith =>
      __$CurrentWeatherDTOCopyWithImpl<_CurrentWeatherDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CurrentWeatherDTOToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CurrentWeatherDTO &&
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
            const DeepCollectionEquality().equals(other._weather, _weather) &&
            (identical(other.rain, rain) || other.rain == rain));
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
      const DeepCollectionEquality().hash(_weather),
      rain);

  @override
  String toString() {
    return 'CurrentWeatherDTO(dt: $dt, sunrise: $sunrise, sunset: $sunset, temp: $temp, feelsLike: $feelsLike, pressure: $pressure, humidity: $humidity, dewPoint: $dewPoint, uvi: $uvi, clouds: $clouds, visibility: $visibility, windSpeed: $windSpeed, windDeg: $windDeg, windGust: $windGust, weather: $weather, rain: $rain)';
  }
}

/// @nodoc
abstract mixin class _$CurrentWeatherDTOCopyWith<$Res>
    implements $CurrentWeatherDTOCopyWith<$Res> {
  factory _$CurrentWeatherDTOCopyWith(
          _CurrentWeatherDTO value, $Res Function(_CurrentWeatherDTO) _then) =
      __$CurrentWeatherDTOCopyWithImpl;
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
      @JsonKey(name: 'dew_point') int? dewPoint,
      double? uvi,
      int? clouds,
      int? visibility,
      @JsonKey(name: 'wind_speed') double? windSpeed,
      @JsonKey(name: 'wind_deg') int? windDeg,
      @JsonKey(name: 'wind_gust') double? windGust,
      List<WeatherConditionDTO>? weather,
      Rain1HDTO? rain});

  @override
  $Rain1HDTOCopyWith<$Res>? get rain;
}

/// @nodoc
class __$CurrentWeatherDTOCopyWithImpl<$Res>
    implements _$CurrentWeatherDTOCopyWith<$Res> {
  __$CurrentWeatherDTOCopyWithImpl(this._self, this._then);

  final _CurrentWeatherDTO _self;
  final $Res Function(_CurrentWeatherDTO) _then;

  /// Create a copy of CurrentWeatherDTO
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
    Object? rain = freezed,
  }) {
    return _then(_CurrentWeatherDTO(
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
              as int?,
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
              as List<WeatherConditionDTO>?,
      rain: freezed == rain
          ? _self.rain
          : rain // ignore: cast_nullable_to_non_nullable
              as Rain1HDTO?,
    ));
  }

  /// Create a copy of CurrentWeatherDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Rain1HDTOCopyWith<$Res>? get rain {
    if (_self.rain == null) {
      return null;
    }

    return $Rain1HDTOCopyWith<$Res>(_self.rain!, (value) {
      return _then(_self.copyWith(rain: value));
    });
  }
}

/// @nodoc
mixin _$HourlyWeatherDTO {
  int? get dt;
  double? get temp;
  @JsonKey(name: 'feels_like')
  double? get feelsLike;
  int? get pressure;
  int? get humidity;
  @JsonKey(name: 'dew_point')
  int? get dewPoint;
  double? get uvi;
  int? get clouds;
  int? get visibility;
  @JsonKey(name: 'wind_speed')
  double? get windSpeed;
  @JsonKey(name: 'wind_deg')
  int? get windDeg;
  @JsonKey(name: 'wind_gust')
  double? get windGust;
  List<WeatherConditionDTO>? get weather;
  double? get pop;
  Rain1HDTO? get rain;

  /// Create a copy of HourlyWeatherDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HourlyWeatherDTOCopyWith<HourlyWeatherDTO> get copyWith =>
      _$HourlyWeatherDTOCopyWithImpl<HourlyWeatherDTO>(
          this as HourlyWeatherDTO, _$identity);

  /// Serializes this HourlyWeatherDTO to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HourlyWeatherDTO &&
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
            (identical(other.pop, pop) || other.pop == pop) &&
            (identical(other.rain, rain) || other.rain == rain));
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
      pop,
      rain);

  @override
  String toString() {
    return 'HourlyWeatherDTO(dt: $dt, temp: $temp, feelsLike: $feelsLike, pressure: $pressure, humidity: $humidity, dewPoint: $dewPoint, uvi: $uvi, clouds: $clouds, visibility: $visibility, windSpeed: $windSpeed, windDeg: $windDeg, windGust: $windGust, weather: $weather, pop: $pop, rain: $rain)';
  }
}

/// @nodoc
abstract mixin class $HourlyWeatherDTOCopyWith<$Res> {
  factory $HourlyWeatherDTOCopyWith(
          HourlyWeatherDTO value, $Res Function(HourlyWeatherDTO) _then) =
      _$HourlyWeatherDTOCopyWithImpl;
  @useResult
  $Res call(
      {int? dt,
      double? temp,
      @JsonKey(name: 'feels_like') double? feelsLike,
      int? pressure,
      int? humidity,
      @JsonKey(name: 'dew_point') int? dewPoint,
      double? uvi,
      int? clouds,
      int? visibility,
      @JsonKey(name: 'wind_speed') double? windSpeed,
      @JsonKey(name: 'wind_deg') int? windDeg,
      @JsonKey(name: 'wind_gust') double? windGust,
      List<WeatherConditionDTO>? weather,
      double? pop,
      Rain1HDTO? rain});

  $Rain1HDTOCopyWith<$Res>? get rain;
}

/// @nodoc
class _$HourlyWeatherDTOCopyWithImpl<$Res>
    implements $HourlyWeatherDTOCopyWith<$Res> {
  _$HourlyWeatherDTOCopyWithImpl(this._self, this._then);

  final HourlyWeatherDTO _self;
  final $Res Function(HourlyWeatherDTO) _then;

  /// Create a copy of HourlyWeatherDTO
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
    Object? rain = freezed,
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
              as int?,
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
              as List<WeatherConditionDTO>?,
      pop: freezed == pop
          ? _self.pop
          : pop // ignore: cast_nullable_to_non_nullable
              as double?,
      rain: freezed == rain
          ? _self.rain
          : rain // ignore: cast_nullable_to_non_nullable
              as Rain1HDTO?,
    ));
  }

  /// Create a copy of HourlyWeatherDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Rain1HDTOCopyWith<$Res>? get rain {
    if (_self.rain == null) {
      return null;
    }

    return $Rain1HDTOCopyWith<$Res>(_self.rain!, (value) {
      return _then(_self.copyWith(rain: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _HourlyWeatherDTO implements HourlyWeatherDTO {
  const _HourlyWeatherDTO(
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
      final List<WeatherConditionDTO>? weather,
      this.pop,
      this.rain})
      : _weather = weather;
  factory _HourlyWeatherDTO.fromJson(Map<String, dynamic> json) =>
      _$HourlyWeatherDTOFromJson(json);

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
  final int? dewPoint;
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
  final List<WeatherConditionDTO>? _weather;
  @override
  List<WeatherConditionDTO>? get weather {
    final value = _weather;
    if (value == null) return null;
    if (_weather is EqualUnmodifiableListView) return _weather;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final double? pop;
  @override
  final Rain1HDTO? rain;

  /// Create a copy of HourlyWeatherDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$HourlyWeatherDTOCopyWith<_HourlyWeatherDTO> get copyWith =>
      __$HourlyWeatherDTOCopyWithImpl<_HourlyWeatherDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$HourlyWeatherDTOToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HourlyWeatherDTO &&
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
            (identical(other.pop, pop) || other.pop == pop) &&
            (identical(other.rain, rain) || other.rain == rain));
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
      pop,
      rain);

  @override
  String toString() {
    return 'HourlyWeatherDTO(dt: $dt, temp: $temp, feelsLike: $feelsLike, pressure: $pressure, humidity: $humidity, dewPoint: $dewPoint, uvi: $uvi, clouds: $clouds, visibility: $visibility, windSpeed: $windSpeed, windDeg: $windDeg, windGust: $windGust, weather: $weather, pop: $pop, rain: $rain)';
  }
}

/// @nodoc
abstract mixin class _$HourlyWeatherDTOCopyWith<$Res>
    implements $HourlyWeatherDTOCopyWith<$Res> {
  factory _$HourlyWeatherDTOCopyWith(
          _HourlyWeatherDTO value, $Res Function(_HourlyWeatherDTO) _then) =
      __$HourlyWeatherDTOCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int? dt,
      double? temp,
      @JsonKey(name: 'feels_like') double? feelsLike,
      int? pressure,
      int? humidity,
      @JsonKey(name: 'dew_point') int? dewPoint,
      double? uvi,
      int? clouds,
      int? visibility,
      @JsonKey(name: 'wind_speed') double? windSpeed,
      @JsonKey(name: 'wind_deg') int? windDeg,
      @JsonKey(name: 'wind_gust') double? windGust,
      List<WeatherConditionDTO>? weather,
      double? pop,
      Rain1HDTO? rain});

  @override
  $Rain1HDTOCopyWith<$Res>? get rain;
}

/// @nodoc
class __$HourlyWeatherDTOCopyWithImpl<$Res>
    implements _$HourlyWeatherDTOCopyWith<$Res> {
  __$HourlyWeatherDTOCopyWithImpl(this._self, this._then);

  final _HourlyWeatherDTO _self;
  final $Res Function(_HourlyWeatherDTO) _then;

  /// Create a copy of HourlyWeatherDTO
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
    Object? rain = freezed,
  }) {
    return _then(_HourlyWeatherDTO(
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
              as int?,
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
              as List<WeatherConditionDTO>?,
      pop: freezed == pop
          ? _self.pop
          : pop // ignore: cast_nullable_to_non_nullable
              as double?,
      rain: freezed == rain
          ? _self.rain
          : rain // ignore: cast_nullable_to_non_nullable
              as Rain1HDTO?,
    ));
  }

  /// Create a copy of HourlyWeatherDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Rain1HDTOCopyWith<$Res>? get rain {
    if (_self.rain == null) {
      return null;
    }

    return $Rain1HDTOCopyWith<$Res>(_self.rain!, (value) {
      return _then(_self.copyWith(rain: value));
    });
  }
}

/// @nodoc
mixin _$DailyWeatherDTO {
  int? get dt;
  int? get sunrise;
  int? get sunset;
  int? get moonrise;
  int? get moonset;
  @JsonKey(name: 'moon_phase')
  double? get moonPhase;
  String? get summary;
  TemperatureDTO? get temp;
  @JsonKey(name: 'feels_like')
  FeelsLikeDTO? get feelsLike;
  int? get pressure;
  int? get humidity;
  @JsonKey(name: 'dew_point')
  int? get dewPoint;
  @JsonKey(name: 'wind_speed')
  double? get windSpeed;
  @JsonKey(name: 'wind_deg')
  int? get windDeg;
  @JsonKey(name: 'wind_gust')
  double? get windGust;
  List<WeatherConditionDTO>? get weather;
  int? get clouds;
  double? get pop; // Probability of precipitation (can also be in daily)
  double? get uvi; // UVI can also be in daily
  double? get rain;

  /// Create a copy of DailyWeatherDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DailyWeatherDTOCopyWith<DailyWeatherDTO> get copyWith =>
      _$DailyWeatherDTOCopyWithImpl<DailyWeatherDTO>(
          this as DailyWeatherDTO, _$identity);

  /// Serializes this DailyWeatherDTO to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DailyWeatherDTO &&
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
            (identical(other.uvi, uvi) || other.uvi == uvi) &&
            (identical(other.rain, rain) || other.rain == rain));
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
        uvi,
        rain
      ]);

  @override
  String toString() {
    return 'DailyWeatherDTO(dt: $dt, sunrise: $sunrise, sunset: $sunset, moonrise: $moonrise, moonset: $moonset, moonPhase: $moonPhase, summary: $summary, temp: $temp, feelsLike: $feelsLike, pressure: $pressure, humidity: $humidity, dewPoint: $dewPoint, windSpeed: $windSpeed, windDeg: $windDeg, windGust: $windGust, weather: $weather, clouds: $clouds, pop: $pop, uvi: $uvi, rain: $rain)';
  }
}

/// @nodoc
abstract mixin class $DailyWeatherDTOCopyWith<$Res> {
  factory $DailyWeatherDTOCopyWith(
          DailyWeatherDTO value, $Res Function(DailyWeatherDTO) _then) =
      _$DailyWeatherDTOCopyWithImpl;
  @useResult
  $Res call(
      {int? dt,
      int? sunrise,
      int? sunset,
      int? moonrise,
      int? moonset,
      @JsonKey(name: 'moon_phase') double? moonPhase,
      String? summary,
      TemperatureDTO? temp,
      @JsonKey(name: 'feels_like') FeelsLikeDTO? feelsLike,
      int? pressure,
      int? humidity,
      @JsonKey(name: 'dew_point') int? dewPoint,
      @JsonKey(name: 'wind_speed') double? windSpeed,
      @JsonKey(name: 'wind_deg') int? windDeg,
      @JsonKey(name: 'wind_gust') double? windGust,
      List<WeatherConditionDTO>? weather,
      int? clouds,
      double? pop,
      double? uvi,
      double? rain});

  $TemperatureDTOCopyWith<$Res>? get temp;
  $FeelsLikeDTOCopyWith<$Res>? get feelsLike;
}

/// @nodoc
class _$DailyWeatherDTOCopyWithImpl<$Res>
    implements $DailyWeatherDTOCopyWith<$Res> {
  _$DailyWeatherDTOCopyWithImpl(this._self, this._then);

  final DailyWeatherDTO _self;
  final $Res Function(DailyWeatherDTO) _then;

  /// Create a copy of DailyWeatherDTO
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
    Object? rain = freezed,
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
              as TemperatureDTO?,
      feelsLike: freezed == feelsLike
          ? _self.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as FeelsLikeDTO?,
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
              as List<WeatherConditionDTO>?,
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
      rain: freezed == rain
          ? _self.rain
          : rain // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }

  /// Create a copy of DailyWeatherDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TemperatureDTOCopyWith<$Res>? get temp {
    if (_self.temp == null) {
      return null;
    }

    return $TemperatureDTOCopyWith<$Res>(_self.temp!, (value) {
      return _then(_self.copyWith(temp: value));
    });
  }

  /// Create a copy of DailyWeatherDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FeelsLikeDTOCopyWith<$Res>? get feelsLike {
    if (_self.feelsLike == null) {
      return null;
    }

    return $FeelsLikeDTOCopyWith<$Res>(_self.feelsLike!, (value) {
      return _then(_self.copyWith(feelsLike: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _DailyWeatherDTO implements DailyWeatherDTO {
  const _DailyWeatherDTO(
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
      final List<WeatherConditionDTO>? weather,
      this.clouds,
      this.pop,
      this.uvi,
      this.rain})
      : _weather = weather;
  factory _DailyWeatherDTO.fromJson(Map<String, dynamic> json) =>
      _$DailyWeatherDTOFromJson(json);

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
  final TemperatureDTO? temp;
  @override
  @JsonKey(name: 'feels_like')
  final FeelsLikeDTO? feelsLike;
  @override
  final int? pressure;
  @override
  final int? humidity;
  @override
  @JsonKey(name: 'dew_point')
  final int? dewPoint;
  @override
  @JsonKey(name: 'wind_speed')
  final double? windSpeed;
  @override
  @JsonKey(name: 'wind_deg')
  final int? windDeg;
  @override
  @JsonKey(name: 'wind_gust')
  final double? windGust;
  final List<WeatherConditionDTO>? _weather;
  @override
  List<WeatherConditionDTO>? get weather {
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
// UVI can also be in daily
  @override
  final double? rain;

  /// Create a copy of DailyWeatherDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DailyWeatherDTOCopyWith<_DailyWeatherDTO> get copyWith =>
      __$DailyWeatherDTOCopyWithImpl<_DailyWeatherDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DailyWeatherDTOToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DailyWeatherDTO &&
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
            (identical(other.uvi, uvi) || other.uvi == uvi) &&
            (identical(other.rain, rain) || other.rain == rain));
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
        uvi,
        rain
      ]);

  @override
  String toString() {
    return 'DailyWeatherDTO(dt: $dt, sunrise: $sunrise, sunset: $sunset, moonrise: $moonrise, moonset: $moonset, moonPhase: $moonPhase, summary: $summary, temp: $temp, feelsLike: $feelsLike, pressure: $pressure, humidity: $humidity, dewPoint: $dewPoint, windSpeed: $windSpeed, windDeg: $windDeg, windGust: $windGust, weather: $weather, clouds: $clouds, pop: $pop, uvi: $uvi, rain: $rain)';
  }
}

/// @nodoc
abstract mixin class _$DailyWeatherDTOCopyWith<$Res>
    implements $DailyWeatherDTOCopyWith<$Res> {
  factory _$DailyWeatherDTOCopyWith(
          _DailyWeatherDTO value, $Res Function(_DailyWeatherDTO) _then) =
      __$DailyWeatherDTOCopyWithImpl;
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
      TemperatureDTO? temp,
      @JsonKey(name: 'feels_like') FeelsLikeDTO? feelsLike,
      int? pressure,
      int? humidity,
      @JsonKey(name: 'dew_point') int? dewPoint,
      @JsonKey(name: 'wind_speed') double? windSpeed,
      @JsonKey(name: 'wind_deg') int? windDeg,
      @JsonKey(name: 'wind_gust') double? windGust,
      List<WeatherConditionDTO>? weather,
      int? clouds,
      double? pop,
      double? uvi,
      double? rain});

  @override
  $TemperatureDTOCopyWith<$Res>? get temp;
  @override
  $FeelsLikeDTOCopyWith<$Res>? get feelsLike;
}

/// @nodoc
class __$DailyWeatherDTOCopyWithImpl<$Res>
    implements _$DailyWeatherDTOCopyWith<$Res> {
  __$DailyWeatherDTOCopyWithImpl(this._self, this._then);

  final _DailyWeatherDTO _self;
  final $Res Function(_DailyWeatherDTO) _then;

  /// Create a copy of DailyWeatherDTO
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
    Object? rain = freezed,
  }) {
    return _then(_DailyWeatherDTO(
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
              as TemperatureDTO?,
      feelsLike: freezed == feelsLike
          ? _self.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as FeelsLikeDTO?,
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
              as List<WeatherConditionDTO>?,
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
      rain: freezed == rain
          ? _self.rain
          : rain // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }

  /// Create a copy of DailyWeatherDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TemperatureDTOCopyWith<$Res>? get temp {
    if (_self.temp == null) {
      return null;
    }

    return $TemperatureDTOCopyWith<$Res>(_self.temp!, (value) {
      return _then(_self.copyWith(temp: value));
    });
  }

  /// Create a copy of DailyWeatherDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FeelsLikeDTOCopyWith<$Res>? get feelsLike {
    if (_self.feelsLike == null) {
      return null;
    }

    return $FeelsLikeDTOCopyWith<$Res>(_self.feelsLike!, (value) {
      return _then(_self.copyWith(feelsLike: value));
    });
  }
}

/// @nodoc
mixin _$TemperatureDTO {
  double? get day;
  double? get min;
  double? get max;
  double? get night;
  double? get eve;
  double? get morn;

  /// Create a copy of TemperatureDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TemperatureDTOCopyWith<TemperatureDTO> get copyWith =>
      _$TemperatureDTOCopyWithImpl<TemperatureDTO>(
          this as TemperatureDTO, _$identity);

  /// Serializes this TemperatureDTO to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TemperatureDTO &&
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
    return 'TemperatureDTO(day: $day, min: $min, max: $max, night: $night, eve: $eve, morn: $morn)';
  }
}

/// @nodoc
abstract mixin class $TemperatureDTOCopyWith<$Res> {
  factory $TemperatureDTOCopyWith(
          TemperatureDTO value, $Res Function(TemperatureDTO) _then) =
      _$TemperatureDTOCopyWithImpl;
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
class _$TemperatureDTOCopyWithImpl<$Res>
    implements $TemperatureDTOCopyWith<$Res> {
  _$TemperatureDTOCopyWithImpl(this._self, this._then);

  final TemperatureDTO _self;
  final $Res Function(TemperatureDTO) _then;

  /// Create a copy of TemperatureDTO
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
class _TemperatureDTO implements TemperatureDTO {
  const _TemperatureDTO(
      {this.day, this.min, this.max, this.night, this.eve, this.morn});
  factory _TemperatureDTO.fromJson(Map<String, dynamic> json) =>
      _$TemperatureDTOFromJson(json);

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

  /// Create a copy of TemperatureDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TemperatureDTOCopyWith<_TemperatureDTO> get copyWith =>
      __$TemperatureDTOCopyWithImpl<_TemperatureDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TemperatureDTOToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TemperatureDTO &&
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
    return 'TemperatureDTO(day: $day, min: $min, max: $max, night: $night, eve: $eve, morn: $morn)';
  }
}

/// @nodoc
abstract mixin class _$TemperatureDTOCopyWith<$Res>
    implements $TemperatureDTOCopyWith<$Res> {
  factory _$TemperatureDTOCopyWith(
          _TemperatureDTO value, $Res Function(_TemperatureDTO) _then) =
      __$TemperatureDTOCopyWithImpl;
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
class __$TemperatureDTOCopyWithImpl<$Res>
    implements _$TemperatureDTOCopyWith<$Res> {
  __$TemperatureDTOCopyWithImpl(this._self, this._then);

  final _TemperatureDTO _self;
  final $Res Function(_TemperatureDTO) _then;

  /// Create a copy of TemperatureDTO
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
    return _then(_TemperatureDTO(
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
mixin _$FeelsLikeDTO {
  double? get day;
  double? get night;
  double? get eve;
  double? get morn;

  /// Create a copy of FeelsLikeDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FeelsLikeDTOCopyWith<FeelsLikeDTO> get copyWith =>
      _$FeelsLikeDTOCopyWithImpl<FeelsLikeDTO>(
          this as FeelsLikeDTO, _$identity);

  /// Serializes this FeelsLikeDTO to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FeelsLikeDTO &&
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
    return 'FeelsLikeDTO(day: $day, night: $night, eve: $eve, morn: $morn)';
  }
}

/// @nodoc
abstract mixin class $FeelsLikeDTOCopyWith<$Res> {
  factory $FeelsLikeDTOCopyWith(
          FeelsLikeDTO value, $Res Function(FeelsLikeDTO) _then) =
      _$FeelsLikeDTOCopyWithImpl;
  @useResult
  $Res call({double? day, double? night, double? eve, double? morn});
}

/// @nodoc
class _$FeelsLikeDTOCopyWithImpl<$Res> implements $FeelsLikeDTOCopyWith<$Res> {
  _$FeelsLikeDTOCopyWithImpl(this._self, this._then);

  final FeelsLikeDTO _self;
  final $Res Function(FeelsLikeDTO) _then;

  /// Create a copy of FeelsLikeDTO
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
class _FeelsLikeDTO implements FeelsLikeDTO {
  const _FeelsLikeDTO({this.day, this.night, this.eve, this.morn});
  factory _FeelsLikeDTO.fromJson(Map<String, dynamic> json) =>
      _$FeelsLikeDTOFromJson(json);

  @override
  final double? day;
  @override
  final double? night;
  @override
  final double? eve;
  @override
  final double? morn;

  /// Create a copy of FeelsLikeDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FeelsLikeDTOCopyWith<_FeelsLikeDTO> get copyWith =>
      __$FeelsLikeDTOCopyWithImpl<_FeelsLikeDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FeelsLikeDTOToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FeelsLikeDTO &&
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
    return 'FeelsLikeDTO(day: $day, night: $night, eve: $eve, morn: $morn)';
  }
}

/// @nodoc
abstract mixin class _$FeelsLikeDTOCopyWith<$Res>
    implements $FeelsLikeDTOCopyWith<$Res> {
  factory _$FeelsLikeDTOCopyWith(
          _FeelsLikeDTO value, $Res Function(_FeelsLikeDTO) _then) =
      __$FeelsLikeDTOCopyWithImpl;
  @override
  @useResult
  $Res call({double? day, double? night, double? eve, double? morn});
}

/// @nodoc
class __$FeelsLikeDTOCopyWithImpl<$Res>
    implements _$FeelsLikeDTOCopyWith<$Res> {
  __$FeelsLikeDTOCopyWithImpl(this._self, this._then);

  final _FeelsLikeDTO _self;
  final $Res Function(_FeelsLikeDTO) _then;

  /// Create a copy of FeelsLikeDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? day = freezed,
    Object? night = freezed,
    Object? eve = freezed,
    Object? morn = freezed,
  }) {
    return _then(_FeelsLikeDTO(
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
mixin _$WeatherConditionDTO {
  int? get id;
  String? get main;
  String? get description;
  String? get icon;

  /// Create a copy of WeatherConditionDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WeatherConditionDTOCopyWith<WeatherConditionDTO> get copyWith =>
      _$WeatherConditionDTOCopyWithImpl<WeatherConditionDTO>(
          this as WeatherConditionDTO, _$identity);

  /// Serializes this WeatherConditionDTO to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WeatherConditionDTO &&
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
    return 'WeatherConditionDTO(id: $id, main: $main, description: $description, icon: $icon)';
  }
}

/// @nodoc
abstract mixin class $WeatherConditionDTOCopyWith<$Res> {
  factory $WeatherConditionDTOCopyWith(
          WeatherConditionDTO value, $Res Function(WeatherConditionDTO) _then) =
      _$WeatherConditionDTOCopyWithImpl;
  @useResult
  $Res call({int? id, String? main, String? description, String? icon});
}

/// @nodoc
class _$WeatherConditionDTOCopyWithImpl<$Res>
    implements $WeatherConditionDTOCopyWith<$Res> {
  _$WeatherConditionDTOCopyWithImpl(this._self, this._then);

  final WeatherConditionDTO _self;
  final $Res Function(WeatherConditionDTO) _then;

  /// Create a copy of WeatherConditionDTO
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
class _WeatherConditionDTO implements WeatherConditionDTO {
  const _WeatherConditionDTO({this.id, this.main, this.description, this.icon});
  factory _WeatherConditionDTO.fromJson(Map<String, dynamic> json) =>
      _$WeatherConditionDTOFromJson(json);

  @override
  final int? id;
  @override
  final String? main;
  @override
  final String? description;
  @override
  final String? icon;

  /// Create a copy of WeatherConditionDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WeatherConditionDTOCopyWith<_WeatherConditionDTO> get copyWith =>
      __$WeatherConditionDTOCopyWithImpl<_WeatherConditionDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WeatherConditionDTOToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WeatherConditionDTO &&
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
    return 'WeatherConditionDTO(id: $id, main: $main, description: $description, icon: $icon)';
  }
}

/// @nodoc
abstract mixin class _$WeatherConditionDTOCopyWith<$Res>
    implements $WeatherConditionDTOCopyWith<$Res> {
  factory _$WeatherConditionDTOCopyWith(_WeatherConditionDTO value,
          $Res Function(_WeatherConditionDTO) _then) =
      __$WeatherConditionDTOCopyWithImpl;
  @override
  @useResult
  $Res call({int? id, String? main, String? description, String? icon});
}

/// @nodoc
class __$WeatherConditionDTOCopyWithImpl<$Res>
    implements _$WeatherConditionDTOCopyWith<$Res> {
  __$WeatherConditionDTOCopyWithImpl(this._self, this._then);

  final _WeatherConditionDTO _self;
  final $Res Function(_WeatherConditionDTO) _then;

  /// Create a copy of WeatherConditionDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? main = freezed,
    Object? description = freezed,
    Object? icon = freezed,
  }) {
    return _then(_WeatherConditionDTO(
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
mixin _$Rain1HDTO {
  @JsonKey(name: '1h')
  double? get anHour;

  /// Create a copy of Rain1HDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $Rain1HDTOCopyWith<Rain1HDTO> get copyWith =>
      _$Rain1HDTOCopyWithImpl<Rain1HDTO>(this as Rain1HDTO, _$identity);

  /// Serializes this Rain1HDTO to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Rain1HDTO &&
            (identical(other.anHour, anHour) || other.anHour == anHour));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, anHour);

  @override
  String toString() {
    return 'Rain1HDTO(anHour: $anHour)';
  }
}

/// @nodoc
abstract mixin class $Rain1HDTOCopyWith<$Res> {
  factory $Rain1HDTOCopyWith(Rain1HDTO value, $Res Function(Rain1HDTO) _then) =
      _$Rain1HDTOCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: '1h') double? anHour});
}

/// @nodoc
class _$Rain1HDTOCopyWithImpl<$Res> implements $Rain1HDTOCopyWith<$Res> {
  _$Rain1HDTOCopyWithImpl(this._self, this._then);

  final Rain1HDTO _self;
  final $Res Function(Rain1HDTO) _then;

  /// Create a copy of Rain1HDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? anHour = freezed,
  }) {
    return _then(_self.copyWith(
      anHour: freezed == anHour
          ? _self.anHour
          : anHour // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Rain1HDTO implements Rain1HDTO {
  const _Rain1HDTO({@JsonKey(name: '1h') this.anHour});
  factory _Rain1HDTO.fromJson(Map<String, dynamic> json) =>
      _$Rain1HDTOFromJson(json);

  @override
  @JsonKey(name: '1h')
  final double? anHour;

  /// Create a copy of Rain1HDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$Rain1HDTOCopyWith<_Rain1HDTO> get copyWith =>
      __$Rain1HDTOCopyWithImpl<_Rain1HDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$Rain1HDTOToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Rain1HDTO &&
            (identical(other.anHour, anHour) || other.anHour == anHour));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, anHour);

  @override
  String toString() {
    return 'Rain1HDTO(anHour: $anHour)';
  }
}

/// @nodoc
abstract mixin class _$Rain1HDTOCopyWith<$Res>
    implements $Rain1HDTOCopyWith<$Res> {
  factory _$Rain1HDTOCopyWith(
          _Rain1HDTO value, $Res Function(_Rain1HDTO) _then) =
      __$Rain1HDTOCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: '1h') double? anHour});
}

/// @nodoc
class __$Rain1HDTOCopyWithImpl<$Res> implements _$Rain1HDTOCopyWith<$Res> {
  __$Rain1HDTOCopyWithImpl(this._self, this._then);

  final _Rain1HDTO _self;
  final $Res Function(_Rain1HDTO) _then;

  /// Create a copy of Rain1HDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? anHour = freezed,
  }) {
    return _then(_Rain1HDTO(
      anHour: freezed == anHour
          ? _self.anHour
          : anHour // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

// dart format on
