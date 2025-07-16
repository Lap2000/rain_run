import 'package:dartz/dartz.dart';

import '../../core/services/exception/failure.dart';
import '../entities/weather/weather_entity.dart';

abstract class WeatherRepository {
  Future<Either<Failure, WeatherEntity>> fetchOpenWeather(
    double lat,
    double lon,
    String languageCode,
  );
}
