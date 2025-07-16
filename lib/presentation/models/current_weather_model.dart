import 'package:equatable/equatable.dart';

import 'rain_model.dart';
import 'weather_condition_model.dart';

class CurrentWeatherModel extends Equatable {
  const CurrentWeatherModel({
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
    this.rain,
  });

  final DateTime? dateTime;
  final DateTime? sunrise;
  final DateTime? sunset;
  final int? tempCelsius;
  final int? feelsLikeCelsius;
  final int? pressure;
  final double? humidity;
  final int? dewPointCelsius;
  final double? uvi;
  final int? clouds;
  final int? visibility;
  final double? windSpeed;
  final int? windDeg;
  final double? windGust;

  final WeatherConditionModel? weather;

  final Rain1hModel? rain;

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
        rain,
      ];
}
