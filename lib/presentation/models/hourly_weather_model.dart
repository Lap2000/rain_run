import 'package:equatable/equatable.dart';

import 'rain_model.dart';
import 'weather_condition_model.dart';

class HourlyWeatherModel extends Equatable {
  const HourlyWeatherModel({
    this.dateTime,
    this.tempCelsius,
    this.feelsLikeCelsius,
    this.pressure,
    this.humidity,
    this.dewPointCelsius,
    this.uvi = 0,
    this.clouds,
    this.visibility,
    this.windSpeed,
    this.windDeg,
    this.windGust,
    this.weather,
    this.pop = 0,
    this.rain,
  });

  final DateTime? dateTime;
  final int? tempCelsius;
  final int? feelsLikeCelsius;
  final int? pressure;
  final double? humidity;
  final int? dewPointCelsius;
  final double uvi;
  final int? clouds;
  final int? visibility;
  final double? windSpeed;
  final int? windDeg;
  final double? windGust;
  final WeatherConditionModel? weather;
  final int pop;
  final Rain1hModel? rain;

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
        rain,
      ];
}
