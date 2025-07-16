import 'package:equatable/equatable.dart';

import 'feels_like_model.dart';
import 'temp_model.dart';
import 'weather_condition_model.dart';

export 'feels_like_model.dart';
export 'temp_model.dart';

class DailyWeatherModel extends Equatable {
  const DailyWeatherModel({
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
    this.pop = 0,
    this.uvi = 0,
    this.rain,
  });

  final DateTime? dateTime;
  final DateTime? sunrise;
  final DateTime? sunset;
  final DateTime? moonrise;
  final DateTime? moonset;
  final double? moonPhase;
  final String? summary;

  final TempModel? temp;
  final FeelsLikeModel? feelsLike;

  final int? pressure;
  final double? humidity;
  final int? dewPoint;
  final double? windSpeed;
  final int? windDeg;
  final double? windGust;

  final WeatherConditionModel? weather;

  final int? clouds;
  final int pop;
  final double uvi;

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
