import 'package:equatable/equatable.dart';

import 'weather_condition_entity.dart';

class CurrentWeatherEntity extends Equatable {
  const CurrentWeatherEntity({
    this.dateTime,
    this.sunrise,
    this.sunset,
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
  });

  final DateTime? dateTime;
  final DateTime? sunrise;
  final DateTime? sunset;
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

  @override
  List<Object?> get props => <Object?>[
        dateTime,
        sunrise,
        sunset,
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
      ];
}
