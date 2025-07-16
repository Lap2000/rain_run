import '../../../core/core.dart';
import '../../../domain/domain.dart';
import '../rain_model.dart';
import '../weather_model.dart';

extension WeatherModelExtension on WeatherEntity {
  WeatherModel toUIModel() {
    return WeatherModel(
      lat: lat,
      lon: lon,
      timezone: timezone,
      current: current?.toUIModel(),
      hourly: hourly?.map((HourlyWeatherEntity e) => e.toUIModel()).toList(),
      daily: daily?.map((DailyWeatherEntity e) => e.toUIModel()).toList(),
    );
  }
}

extension CurrentWeatherModelExtension on CurrentWeatherEntity {
  CurrentWeatherModel toUIModel() {
    return CurrentWeatherModel(
      dateTime: dateTime,
      sunrise: sunrise,
      sunset: sunset,
      tempCelsius: tempCelsius,
      feelsLikeCelsius: feelsLikeCelsius,
      pressure: pressure,
      humidity: humidity,
      dewPointCelsius: dewPointCelsius,
      uvi: uvi,
      clouds: clouds,
      visibility: visibility,
      windSpeed: windSpeed,
      windDeg: windDeg,
      windGust: windGust,
      weather: weather?.toUIModel(),
      rain: rain?.toUIModel(),
    );
  }
}

extension HourlyWeatherModelExtension on HourlyWeatherEntity {
  HourlyWeatherModel toUIModel() {
    return HourlyWeatherModel(
      dateTime: dateTime,
      tempCelsius: tempCelsius,
      feelsLikeCelsius: feelsLikeCelsius,
      pressure: pressure,
      humidity: humidity,
      dewPointCelsius: dewPointCelsius,
      uvi: uvi ?? 0,
      clouds: clouds,
      visibility: visibility,
      windSpeed: windSpeed,
      windDeg: windDeg,
      windGust: windGust,
      weather: weather?.toUIModel(),
      pop: ((pop ?? 0) * 100).round(),
      rain: rain?.toUIModel(),
    );
  }
}

extension DailyWeatherModelExtension on DailyWeatherEntity {
  DailyWeatherModel toUIModel() {
    return DailyWeatherModel(
      dateTime: dateTime,
      sunrise: sunrise,
      sunset: sunset,
      moonrise: moonrise,
      moonset: moonset,
      moonPhase: moonPhase,
      summary: summary,
      temp: temp?.toUIModel(),
      feelsLike: feelsLike?.toUIModel(),
      pressure: pressure,
      humidity: humidity,
      dewPoint: dewPoint,
      windSpeed: windSpeed,
      windDeg: windDeg,
      windGust: windGust,
      weather: weather?.toUIModel(),
      clouds: clouds,
      pop: ((pop ?? 0) * 100).round(),
      uvi: uvi ?? 0,
      rain: rain,
    );
  }
}

extension WeatherConditionModelExtension on WeatherConditionEntity {
  WeatherConditionModel toUIModel() {
    return WeatherConditionModel(
      id: id,
      main: main,
      description: description,
      icon: icon,
      iconPng: AssetsExt.svgName(icon, id),
    );
  }
}

extension TempModelExtension on TempEntity {
  TempModel toUIModel() {
    return TempModel(
      day: day,
      min: min,
      max: max,
      night: night,
      eve: eve,
      morn: morn,
    );
  }
}

extension FeelsLikeModelExtension on FeelsLikeEntity {
  FeelsLikeModel toUIModel() {
    return FeelsLikeModel(
      day: day,
      night: night,
      eve: eve,
      morn: morn,
    );
  }
}

extension Rain1HModelExtension on Rain1hEntity {
  Rain1hModel toUIModel() {
    return Rain1hModel(
      rain1h: rain1h,
    );
  }
}
