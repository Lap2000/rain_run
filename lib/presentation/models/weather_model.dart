import 'package:equatable/equatable.dart';

import 'current_weather_model.dart';
import 'daily_weather_model.dart';
import 'hourly_weather_model.dart';

export 'current_weather_model.dart';
export 'daily_weather_model.dart';
export 'feels_like_model.dart';
export 'hourly_weather_model.dart';
export 'temp_model.dart';
export 'ui_model_mapper/ui_model_mapper.dart';
export 'weather_condition_model.dart';

class WeatherModel extends Equatable {
  const WeatherModel({
    this.lat,
    this.lon,
    this.timezone,
    this.current,
    this.hourly,
    this.daily,
  });
  final double? lat;
  final double? lon;
  final String? timezone;
  final CurrentWeatherModel? current;
  final List<HourlyWeatherModel>? hourly;
  final List<DailyWeatherModel>? daily;

  @override
  List<Object?> get props => <Object?>[lat, lon, timezone, current, hourly, daily];
}
