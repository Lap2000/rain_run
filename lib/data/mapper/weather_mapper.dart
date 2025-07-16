import '../../core/core.dart';
import '../../domain/entities/weather/weather_entity.dart';
import '../dto/weather/weather_dto.dart';

DateTime? _toDateTime(int? timestamp) =>
    timestamp != null ? DateTime.fromMillisecondsSinceEpoch(timestamp * 1000, isUtc: true) : null;

extension WeatherResponseExtension on WeatherDTO {
  WeatherEntity toEntity() {
    return WeatherEntity(
      lat: lat,
      lon: lon,
      timezone: timezone,
      current: current?.toEntity(),
      hourly: hourly?.map((HourlyWeatherDTO e) => e.toEntity()).toList(),
      daily: daily?.map((DailyWeatherDTO e) => e.toEntity()).toList(),
    );
  }
}

extension CurrentWeatherExtension on CurrentWeatherDTO {
  CurrentWeatherEntity toEntity() {
    final WeatherConditionDTO? weatherFirst =
        weather != null && weather!.isNotEmpty ? weather!.first : null;

    return CurrentWeatherEntity(
      dateTime: dt != null ? DateTime.fromMillisecondsSinceEpoch(dt! * 1000, isUtc: true) : null,
      sunrise: sunrise != null
          ? DateTime.fromMillisecondsSinceEpoch(sunrise! * 1000, isUtc: true)
          : null,
      sunset:
          sunset != null ? DateTime.fromMillisecondsSinceEpoch(sunset! * 1000, isUtc: true) : null,
      tempCelsius: temp?.round(),
      feelsLikeCelsius: feelsLike?.round(),
      pressure: pressure,
      humidity: humidity?.toDouble(),
      dewPointCelsius: dewPoint,
      uvi: uvi,
      clouds: clouds,
      visibility: visibility,
      windSpeed: windSpeed,
      windDeg: windDeg,
      windGust: windGust,
      weather: weatherFirst?.toEntity(),
      rain: rain?.toEntity(),
    );
  }
}

extension HourlyWeatherExtension on HourlyWeatherDTO {
  HourlyWeatherEntity toEntity() {
    final WeatherConditionDTO? weatherFirst =
        weather != null && weather!.isNotEmpty ? weather!.first : null;

    return HourlyWeatherEntity(
      dateTime: _toDateTime(dt),
      tempCelsius: temp?.round(),
      feelsLikeCelsius: feelsLike?.round(),
      pressure: pressure,
      humidity: humidity?.toDouble(),
      dewPointCelsius: dewPoint,
      uvi: uvi,
      clouds: clouds,
      visibility: visibility,
      windSpeed: windSpeed,
      windDeg: windDeg,
      windGust: windGust,
      weather: weatherFirst?.toEntity(),
      pop: pop,
      rain: rain?.toEntity(),
    );
  }
}

extension DailyWeatherExtension on DailyWeatherDTO {
  DailyWeatherEntity toEntity() {
    final WeatherConditionDTO? weatherFirst =
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
      dewPoint: dewPoint,
      windSpeed: windSpeed,
      windDeg: windDeg,
      windGust: windGust,
      weather: weatherFirst?.toEntity(),
      clouds: clouds,
      pop: pop,
      uvi: uvi,
      rain: rain,
    );
  }
}

extension WeatherConditionExtension on WeatherConditionDTO {
  WeatherConditionEntity toEntity() {
    return WeatherConditionEntity(
      id: id,
      main: main,
      description: description.capitalizeFirstLetter,
      icon: icon,
    );
  }
}

extension TempExtension on TemperatureDTO {
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

extension FeelsLikeExtension on FeelsLikeDTO {
  FeelsLikeEntity toEntity() {
    return FeelsLikeEntity(
      day: day,
      night: night,
      eve: eve,
      morn: morn,
    );
  }
}

extension Rain1HExtension on Rain1HDTO {
  Rain1hEntity toEntity() {
    return Rain1hEntity(
      rain1h: anHour,
    );
  }
}
