import 'package:dartz/dartz.dart';

import '../../core/services/exception/failure.dart';
import '../entities/weather/weather_entity.dart';
import '../repositories/weather_repository.dart';

class GetWeatherUsecase {
  GetWeatherUsecase(this.repository);
  final WeatherRepository repository;

  Future<Either<Failure, WeatherEntity>> call(double lat, double lon, String languageCode) async {
    // TODO(lappd): handle business logic
    return repository.fetchOpenWeather(lat, lon, languageCode);
  }
}
