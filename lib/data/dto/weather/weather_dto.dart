// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_dto.freezed.dart';
part 'weather_dto.g.dart';

/// Main model for the OpenWeatherMap One Call 3.0 API response.
@freezed
abstract class WeatherDTO with _$WeatherDTO {
  const factory WeatherDTO({
    double? lat,
    double? lon,
    String? timezone,
    int? timezoneOffset,
    CurrentWeatherDTO? current,
    List<HourlyWeatherDTO>? hourly,
    List<DailyWeatherDTO>? daily,
  }) = _WeatherDTO;

  factory WeatherDTO.fromJson(Map<String, dynamic> json) => _$WeatherDTOFromJson(json);
}

/// Additional models for current, hourly, and daily weather data.
/// These models represent the structure of the weather data returned by the OpenWeatherMap API.
/// Model for current weather data.
@freezed
abstract class CurrentWeatherDTO with _$CurrentWeatherDTO {
  const factory CurrentWeatherDTO({
    int? dt,
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
    Rain1HDTO? rain,
  }) = _CurrentWeatherDTO;

  factory CurrentWeatherDTO.fromJson(Map<String, dynamic> json) =>
      _$CurrentWeatherDTOFromJson(json);
}

/// Model for hourly weather data.
@freezed
abstract class HourlyWeatherDTO with _$HourlyWeatherDTO {
  const factory HourlyWeatherDTO({
    int? dt,
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
    Rain1HDTO? rain,
  }) = _HourlyWeatherDTO;

  factory HourlyWeatherDTO.fromJson(Map<String, dynamic> json) => _$HourlyWeatherDTOFromJson(json);
}

/// Model for daily weather data.
@freezed
abstract class DailyWeatherDTO with _$DailyWeatherDTO {
  const factory DailyWeatherDTO({
    int? dt,
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
    double? pop, // Probability of precipitation (can also be in daily)
    double? uvi, // UVI can also be in daily
    double? rain,
  }) = _DailyWeatherDTO;

  factory DailyWeatherDTO.fromJson(Map<String, dynamic> json) => _$DailyWeatherDTOFromJson(json);
}

/// Model for temperature data within daily forecasts.
@freezed
abstract class TemperatureDTO with _$TemperatureDTO {
  const factory TemperatureDTO({
    double? day,
    double? min,
    double? max,
    double? night,
    double? eve,
    double? morn,
  }) = _TemperatureDTO;

  factory TemperatureDTO.fromJson(Map<String, dynamic> json) => _$TemperatureDTOFromJson(json);
}

/// Model for feels-like temperature data within daily forecasts.
@freezed
abstract class FeelsLikeDTO with _$FeelsLikeDTO {
  const factory FeelsLikeDTO({
    double? day,
    double? night,
    double? eve,
    double? morn,
  }) = _FeelsLikeDTO;

  factory FeelsLikeDTO.fromJson(Map<String, dynamic> json) => _$FeelsLikeDTOFromJson(json);
}

/// Model for weather condition details (e.g., Clouds, Clear, Rain).
@freezed
abstract class WeatherConditionDTO with _$WeatherConditionDTO {
  const factory WeatherConditionDTO({
    int? id,
    String? main,
    String? description,
    String? icon,
  }) = _WeatherConditionDTO;

  factory WeatherConditionDTO.fromJson(Map<String, dynamic> json) =>
      _$WeatherConditionDTOFromJson(json);
}

/// Model for weather condition details (e.g., Clouds, Clear, Rain).
@freezed
abstract class Rain1HDTO with _$Rain1HDTO {
  const factory Rain1HDTO({
    @JsonKey(name: '1h') double? anHour,
  }) = _Rain1HDTO;

  factory Rain1HDTO.fromJson(Map<String, dynamic> json) => _$Rain1HDTOFromJson(json);
}
