import 'package:dartz/dartz.dart';

import '../../../core/services/exception/failure.dart';
import '../../../domain/entities/weather/weather_entity.dart';
import '../../../domain/repositories/weather_repository.dart';
import '../../mapper/weather_mapper.dart';
import '../../models/weather/weather_model.dart';
import '../../remotes/remote_data_source/weather_remote_data_source.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  WeatherRepositoryImpl(this._remoteDataSource);

  final WeatherRemoteDataSource _remoteDataSource;

  @override
  Future<Either<Failure, WeatherEntity>> fetchOpenWeather(double lat, double lon) async {
    // TODO(lappd): check local cache before fetching from remote
    final Either<Failure, WeatherResponse> response =
        await _remoteDataSource.fetchOpenWeather(lat, lon);

    return response.fold(
      (Failure failure) => Left<Failure, WeatherEntity>(failure),
      (WeatherResponse weatherResponse) =>
          Right<Failure, WeatherEntity>(weatherResponse.toEntity()),
    );
  }
}
