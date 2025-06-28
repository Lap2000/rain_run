// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_model.freezed.dart';
part 'weather_model.g.dart';

/// Main model for the OpenWeatherMap One Call 3.0 API response.
@freezed
abstract class WeatherResponse with _$WeatherResponse {
  const factory WeatherResponse({
    double? lat,
    double? lon,
    String? timezone,
    int? timezoneOffset,
    CurrentWeather? current,
    List<HourlyWeather>? hourly,
    List<DailyWeather>? daily,
  }) = _WeatherResponse;

  factory WeatherResponse.fromJson(Map<String, dynamic> json) => _$WeatherResponseFromJson(json);
}

/// Additional models for current, hourly, and daily weather data.
/// These models represent the structure of the weather data returned by the OpenWeatherMap API.
/// Model for current weather data.
@freezed
abstract class CurrentWeather with _$CurrentWeather {
  const factory CurrentWeather({
    int? dt,
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
    List<WeatherCondition>? weather,
  }) = _CurrentWeather;

  factory CurrentWeather.fromJson(Map<String, dynamic> json) => _$CurrentWeatherFromJson(json);
}

/// Model for hourly weather data.
@freezed
abstract class HourlyWeather with _$HourlyWeather {
  const factory HourlyWeather({
    int? dt,
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
    double? pop,
  }) = _HourlyWeather;

  factory HourlyWeather.fromJson(Map<String, dynamic> json) => _$HourlyWeatherFromJson(json);
}

/// Model for daily weather data.
@freezed
abstract class DailyWeather with _$DailyWeather {
  const factory DailyWeather({
    int? dt,
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
    double? pop, // Probability of precipitation (can also be in daily)
    double? uvi, // UVI can also be in daily
  }) = _DailyWeather;

  factory DailyWeather.fromJson(Map<String, dynamic> json) => _$DailyWeatherFromJson(json);
}

/// Model for temperature data within daily forecasts.
@freezed
abstract class Temperature with _$Temperature {
  const factory Temperature({
    double? day,
    double? min,
    double? max,
    double? night,
    double? eve,
    double? morn,
  }) = _Temperature;

  factory Temperature.fromJson(Map<String, dynamic> json) => _$TemperatureFromJson(json);
}

/// Model for feels-like temperature data within daily forecasts.
@freezed
abstract class FeelsLike with _$FeelsLike {
  const factory FeelsLike({
    double? day,
    double? night,
    double? eve,
    double? morn,
  }) = _FeelsLike;

  factory FeelsLike.fromJson(Map<String, dynamic> json) => _$FeelsLikeFromJson(json);
}

/// Model for weather condition details (e.g., Clouds, Clear, Rain).
@freezed
abstract class WeatherCondition with _$WeatherCondition {
  const factory WeatherCondition({
    int? id,
    String? main,
    String? description,
    String? icon,
  }) = _WeatherCondition;

  factory WeatherCondition.fromJson(Map<String, dynamic> json) => _$WeatherConditionFromJson(json);
}
