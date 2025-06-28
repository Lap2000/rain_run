import '../../domain/entities/weather/weather_entity.dart';
import '../models/weather/weather_model.dart';

double? _kToC(dynamic k) => (k is num) ? (k - 273.15) : null;

DateTime? _toDateTime(int? timestamp) =>
    timestamp != null ? DateTime.fromMillisecondsSinceEpoch(timestamp * 1000, isUtc: true) : null;

extension WeatherResponseExtension on WeatherResponse {
  WeatherEntity toEntity() {
    return WeatherEntity(
      lat: lat,
      lon: lon,
      timezone: timezone,
      current: current?.toEntity(),
      hourly: hourly?.map((HourlyWeather e) => e.toEntity()).toList(),
      daily: daily?.map((DailyWeather e) => e.toEntity()).toList(),
    );
  }
}

extension CurrentWeatherExtension on CurrentWeather {
  CurrentWeatherEntity toEntity() {
    final WeatherCondition? weatherFirst =
        weather != null && weather!.isNotEmpty ? weather!.first : null;

    return CurrentWeatherEntity(
      dateTime: dt != null ? DateTime.fromMillisecondsSinceEpoch(dt! * 1000, isUtc: true) : null,
      sunrise: sunrise != null
          ? DateTime.fromMillisecondsSinceEpoch(sunrise! * 1000, isUtc: true)
          : null,
      sunset:
          sunset != null ? DateTime.fromMillisecondsSinceEpoch(sunset! * 1000, isUtc: true) : null,
      tempCelsius: _kToC(temp),
      feelsLikeCelsius: _kToC(feelsLike),
      pressure: pressure,
      humidity: humidity?.toDouble(),
      dewPointCelsius: _kToC(dewPoint),
      uvi: uvi,
      clouds: clouds,
      visibility: visibility,
      windSpeed: windSpeed,
      windDeg: windDeg,
      windGust: windGust,
      weather: weatherFirst?.toEntity(),
    );
  }
}

extension HourlyWeatherExtension on HourlyWeather {
  HourlyWeatherEntity toEntity() {
    final WeatherCondition? weatherFirst =
        weather != null && weather!.isNotEmpty ? weather!.first : null;

    return HourlyWeatherEntity(
      dateTime: _toDateTime(dt),
      tempCelsius: _kToC(temp),
      feelsLikeCelsius: _kToC(feelsLike),
      pressure: pressure,
      humidity: humidity?.toDouble(),
      dewPointCelsius: _kToC(dewPoint),
      uvi: uvi,
      clouds: clouds,
      visibility: visibility,
      windSpeed: windSpeed,
      windDeg: windDeg,
      windGust: windGust,
      weather: weatherFirst?.toEntity(),
      pop: pop,
    );
  }
}

extension DailyWeatherExtension on DailyWeather {
  DailyWeatherEntity toEntity() {
    final WeatherCondition? weatherFirst =
        weather != null && weather!.isNotEmpty ? weather!.first : null;

    return DailyWeatherEntity(
      dateTime: _toDateTime(dt),
      sunrise: _toDateTime(sunrise),
      sunset: _toDateTime(sunset),
      moonrise: _toDateTime(moonrise),
      moonset: _toDateTime(moonset),
      moonPhase: moonPhase,
      summary: summary,
      temp: temp?.toEntity(),
      feelsLike: feelsLike?.toEntity(),
      pressure: pressure,
      humidity: humidity?.toDouble(),
      dewPoint: _kToC(dewPoint),
      windSpeed: windSpeed,
      windDeg: windDeg,
      windGust: windGust,
      weather: weatherFirst?.toEntity(),
      clouds: clouds,
      pop: pop,
      uvi: uvi,
    );
  }
}

extension WeatherConditionExtension on WeatherCondition {
  WeatherConditionEntity toEntity() {
    return WeatherConditionEntity(
      id: id,
      main: main,
      description: description,
      icon: icon,
    );
  }
}

extension TempExtension on Temperature {
  TempEntity toEntity() {
    return TempEntity(
      day: day,
      min: min,
      max: max,
      night: night,
      eve: eve,
      morn: morn,
    );
  }
}

extension FeelsLikeExtension on FeelsLike {
  FeelsLikeEntity toEntity() {
    return FeelsLikeEntity(
      day: day,
      night: night,
      eve: eve,
      morn: morn,
    );
  }
}
