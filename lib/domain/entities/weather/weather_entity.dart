import 'package:equatable/equatable.dart';

import 'current_weather_entity.dart';
import 'daily_weather_entity.dart';
import 'hourly_weather_entity.dart';

export 'current_weather_entity.dart';
export 'daily_weather_entity.dart';
export 'feels_like_entity.dart';
export 'hourly_weather_entity.dart';
export 'temp_entity.dart';
export 'weather_condition_entity.dart';

class WeatherEntity extends Equatable {
  const WeatherEntity({
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
  final CurrentWeatherEntity? current;
  final List<HourlyWeatherEntity>? hourly;
  final List<DailyWeatherEntity>? daily;

  @override
  List<Object?> get props => <Object?>[lat, lon, timezone, current, hourly, daily];
}
