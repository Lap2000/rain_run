// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WeatherDTO _$WeatherDTOFromJson(Map<String, dynamic> json) => _WeatherDTO(
      lat: (json['lat'] as num?)?.toDouble(),
      lon: (json['lon'] as num?)?.toDouble(),
      timezone: json['timezone'] as String?,
      timezoneOffset: (json['timezoneOffset'] as num?)?.toInt(),
      current: json['current'] == null
          ? null
          : CurrentWeatherDTO.fromJson(json['current'] as Map<String, dynamic>),
      hourly: (json['hourly'] as List<dynamic>?)
          ?.map((e) => HourlyWeatherDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      daily: (json['daily'] as List<dynamic>?)
          ?.map((e) => DailyWeatherDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WeatherDTOToJson(_WeatherDTO instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lon': instance.lon,
      'timezone': instance.timezone,
      'timezoneOffset': instance.timezoneOffset,
      'current': instance.current,
      'hourly': instance.hourly,
      'daily': instance.daily,
    };

_CurrentWeatherDTO _$CurrentWeatherDTOFromJson(Map<String, dynamic> json) =>
    _CurrentWeatherDTO(
      dt: (json['dt'] as num?)?.toInt(),
      sunrise: (json['sunrise'] as num?)?.toInt(),
      sunset: (json['sunset'] as num?)?.toInt(),
      temp: (json['temp'] as num?)?.toDouble(),
      feelsLike: (json['feels_like'] as num?)?.toDouble(),
      pressure: (json['pressure'] as num?)?.toInt(),
      humidity: (json['humidity'] as num?)?.toInt(),
      dewPoint: (json['dew_point'] as num?)?.toInt(),
      uvi: (json['uvi'] as num?)?.toDouble(),
      clouds: (json['clouds'] as num?)?.toInt(),
      visibility: (json['visibility'] as num?)?.toInt(),
      windSpeed: (json['wind_speed'] as num?)?.toDouble(),
      windDeg: (json['wind_deg'] as num?)?.toInt(),
      windGust: (json['wind_gust'] as num?)?.toDouble(),
      weather: (json['weather'] as List<dynamic>?)
          ?.map((e) => WeatherConditionDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      rain: json['rain'] == null
          ? null
          : Rain1HDTO.fromJson(json['rain'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CurrentWeatherDTOToJson(_CurrentWeatherDTO instance) =>
    <String, dynamic>{
      'dt': instance.dt,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
      'temp': instance.temp,
      'feels_like': instance.feelsLike,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
      'dew_point': instance.dewPoint,
      'uvi': instance.uvi,
      'clouds': instance.clouds,
      'visibility': instance.visibility,
      'wind_speed': instance.windSpeed,
      'wind_deg': instance.windDeg,
      'wind_gust': instance.windGust,
      'weather': instance.weather,
      'rain': instance.rain,
    };

_HourlyWeatherDTO _$HourlyWeatherDTOFromJson(Map<String, dynamic> json) =>
    _HourlyWeatherDTO(
      dt: (json['dt'] as num?)?.toInt(),
      temp: (json['temp'] as num?)?.toDouble(),
      feelsLike: (json['feels_like'] as num?)?.toDouble(),
      pressure: (json['pressure'] as num?)?.toInt(),
      humidity: (json['humidity'] as num?)?.toInt(),
      dewPoint: (json['dew_point'] as num?)?.toInt(),
      uvi: (json['uvi'] as num?)?.toDouble(),
      clouds: (json['clouds'] as num?)?.toInt(),
      visibility: (json['visibility'] as num?)?.toInt(),
      windSpeed: (json['wind_speed'] as num?)?.toDouble(),
      windDeg: (json['wind_deg'] as num?)?.toInt(),
      windGust: (json['wind_gust'] as num?)?.toDouble(),
      weather: (json['weather'] as List<dynamic>?)
          ?.map((e) => WeatherConditionDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      pop: (json['pop'] as num?)?.toDouble(),
      rain: json['rain'] == null
          ? null
          : Rain1HDTO.fromJson(json['rain'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HourlyWeatherDTOToJson(_HourlyWeatherDTO instance) =>
    <String, dynamic>{
      'dt': instance.dt,
      'temp': instance.temp,
      'feels_like': instance.feelsLike,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
      'dew_point': instance.dewPoint,
      'uvi': instance.uvi,
      'clouds': instance.clouds,
      'visibility': instance.visibility,
      'wind_speed': instance.windSpeed,
      'wind_deg': instance.windDeg,
      'wind_gust': instance.windGust,
      'weather': instance.weather,
      'pop': instance.pop,
      'rain': instance.rain,
    };

_DailyWeatherDTO _$DailyWeatherDTOFromJson(Map<String, dynamic> json) =>
    _DailyWeatherDTO(
      dt: (json['dt'] as num?)?.toInt(),
      sunrise: (json['sunrise'] as num?)?.toInt(),
      sunset: (json['sunset'] as num?)?.toInt(),
      moonrise: (json['moonrise'] as num?)?.toInt(),
      moonset: (json['moonset'] as num?)?.toInt(),
      moonPhase: (json['moon_phase'] as num?)?.toDouble(),
      summary: json['summary'] as String?,
      temp: json['temp'] == null
          ? null
          : TemperatureDTO.fromJson(json['temp'] as Map<String, dynamic>),
      feelsLike: json['feels_like'] == null
          ? null
          : FeelsLikeDTO.fromJson(json['feels_like'] as Map<String, dynamic>),
      pressure: (json['pressure'] as num?)?.toInt(),
      humidity: (json['humidity'] as num?)?.toInt(),
      dewPoint: (json['dew_point'] as num?)?.toInt(),
      windSpeed: (json['wind_speed'] as num?)?.toDouble(),
      windDeg: (json['wind_deg'] as num?)?.toInt(),
      windGust: (json['wind_gust'] as num?)?.toDouble(),
      weather: (json['weather'] as List<dynamic>?)
          ?.map((e) => WeatherConditionDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      clouds: (json['clouds'] as num?)?.toInt(),
      pop: (json['pop'] as num?)?.toDouble(),
      uvi: (json['uvi'] as num?)?.toDouble(),
      rain: (json['rain'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$DailyWeatherDTOToJson(_DailyWeatherDTO instance) =>
    <String, dynamic>{
      'dt': instance.dt,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
      'moonrise': instance.moonrise,
      'moonset': instance.moonset,
      'moon_phase': instance.moonPhase,
      'summary': instance.summary,
      'temp': instance.temp,
      'feels_like': instance.feelsLike,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
      'dew_point': instance.dewPoint,
      'wind_speed': instance.windSpeed,
      'wind_deg': instance.windDeg,
      'wind_gust': instance.windGust,
      'weather': instance.weather,
      'clouds': instance.clouds,
      'pop': instance.pop,
      'uvi': instance.uvi,
      'rain': instance.rain,
    };

_TemperatureDTO _$TemperatureDTOFromJson(Map<String, dynamic> json) =>
    _TemperatureDTO(
      day: (json['day'] as num?)?.toDouble(),
      min: (json['min'] as num?)?.toDouble(),
      max: (json['max'] as num?)?.toDouble(),
      night: (json['night'] as num?)?.toDouble(),
      eve: (json['eve'] as num?)?.toDouble(),
      morn: (json['morn'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$TemperatureDTOToJson(_TemperatureDTO instance) =>
    <String, dynamic>{
      'day': instance.day,
      'min': instance.min,
      'max': instance.max,
      'night': instance.night,
      'eve': instance.eve,
      'morn': instance.morn,
    };

_FeelsLikeDTO _$FeelsLikeDTOFromJson(Map<String, dynamic> json) =>
    _FeelsLikeDTO(
      day: (json['day'] as num?)?.toDouble(),
      night: (json['night'] as num?)?.toDouble(),
      eve: (json['eve'] as num?)?.toDouble(),
      morn: (json['morn'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$FeelsLikeDTOToJson(_FeelsLikeDTO instance) =>
    <String, dynamic>{
      'day': instance.day,
      'night': instance.night,
      'eve': instance.eve,
      'morn': instance.morn,
    };

_WeatherConditionDTO _$WeatherConditionDTOFromJson(Map<String, dynamic> json) =>
    _WeatherConditionDTO(
      id: (json['id'] as num?)?.toInt(),
      main: json['main'] as String?,
      description: json['description'] as String?,
      icon: json['icon'] as String?,
    );

Map<String, dynamic> _$WeatherConditionDTOToJson(
        _WeatherConditionDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'main': instance.main,
      'description': instance.description,
      'icon': instance.icon,
    };

_Rain1HDTO _$Rain1HDTOFromJson(Map<String, dynamic> json) => _Rain1HDTO(
      anHour: (json['1h'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$Rain1HDTOToJson(_Rain1HDTO instance) =>
    <String, dynamic>{
      '1h': instance.anHour,
    };
