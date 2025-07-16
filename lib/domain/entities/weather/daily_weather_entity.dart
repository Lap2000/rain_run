import 'package:equatable/equatable.dart';

import 'feels_like_entity.dart';
import 'temp_entity.dart';
import 'weather_condition_entity.dart';

export 'feels_like_entity.dart';
export 'temp_entity.dart';

class DailyWeatherEntity extends Equatable {
  const DailyWeatherEntity({
    this.dateTime,
    this.sunrise,
    this.sunset,
    this.moonrise,
    this.moonset,
    this.moonPhase,
    this.summary,
    this.temp,
    this.feelsLike,
    this.pressure,
    this.humidity,
    this.dewPoint,
    this.windSpeed,
    this.windDeg,
    this.windGust,
    this.weather,
    this.clouds,
    this.pop,
    this.uvi,
    this.rain,
  });

  final DateTime? dateTime;
  final DateTime? sunrise;
  final DateTime? sunset;
  final DateTime? moonrise;
  final DateTime? moonset;
  final double? moonPhase;
  final String? summary;

  final TempEntity? temp;
  final FeelsLikeEntity? feelsLike;

  final int? pressure;
  final double? humidity;
  final int? dewPoint;
  final double? windSpeed;
  final int? windDeg;
  final double? windGust;

  final WeatherConditionEntity? weather;

  final int? clouds;
  final double? pop;
  final double? uvi;

  final double? rain;

  @override
  List<Object?> get props => <Object?>[
        dateTime,
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
        weather,
        clouds,
        pop,
        uvi,
        rain,
      ];
}
