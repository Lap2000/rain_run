import 'package:equatable/equatable.dart';

import 'weather_condition_entity.dart';

class HourlyWeatherEntity extends Equatable {
  const HourlyWeatherEntity({
    this.dateTime,
    this.tempCelsius,
    this.feelsLikeCelsius,
    this.pressure,
    this.humidity,
    this.dewPointCelsius,
    this.uvi,
    this.clouds,
    this.visibility,
    this.windSpeed,
    this.windDeg,
    this.windGust,
    this.weather,
    this.pop,
  });

  final DateTime? dateTime;
  final double? tempCelsius;
  final double? feelsLikeCelsius;
  final int? pressure;
  final double? humidity;
  final double? dewPointCelsius;
  final double? uvi;
  final int? clouds;
  final int? visibility;
  final double? windSpeed;
  final int? windDeg;
  final double? windGust;
  final WeatherConditionEntity? weather;
  final double? pop;

  @override
  List<Object?> get props => <Object?>[
        dateTime,
        tempCelsius,
        feelsLikeCelsius,
        pressure,
        humidity,
        dewPointCelsius,
        uvi,
        clouds,
        visibility,
        windSpeed,
        windDeg,
        windGust,
        weather,
        pop,
      ];
}
