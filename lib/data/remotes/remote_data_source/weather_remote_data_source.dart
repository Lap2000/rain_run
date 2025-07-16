import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../core/core.dart';
import '../../dto/weather/weather_dto.dart';
import '../network/api_client.dart';

abstract class WeatherRemoteDataSource {
  Future<Either<Failure, WeatherDTO>> fetchOpenWeather(
    double lat,
    double lon,
    String languageCode,
  );
}

class WeatherRemoteDataSourceImpl implements WeatherRemoteDataSource {
  WeatherRemoteDataSourceImpl(this.apiClient);
  final ApiClient apiClient;

  @override
  Future<Either<Failure, WeatherDTO>> fetchOpenWeather(
    double lat,
    double lon,
    String languageCode,
  ) async {
    try {
      final WeatherDTO response = await apiClient.getOneCallWeather(
        lat: lat,
        lon: lon,
        apiKey: AppEnv.instance.openWeatherMapApiKey,
        lang: languageCode,
      );
      return Right<Failure, WeatherDTO>(response);
    } on DioException catch (e) {
      if (e.response != null) {
        final int statusCode = e.response?.statusCode ?? 0;
        final String message = e.response?.data.toString() ?? 'Unknown error';

        if (statusCode >= 400 && statusCode < 500) {
          return Left<Failure, WeatherDTO>(ClientFailure(msg: message));
        } else if (statusCode >= 500) {
          return Left<Failure, WeatherDTO>(ServerFailure(msg: message));
        } else {
          return Left<Failure, WeatherDTO>(UnknownFailure(msg: message));
        }
      } else {
        // Network error, no response
        return const Left<Failure, WeatherDTO>(NoConnectionFailure());
      }
    } catch (e) {
      // UnKnow error, no response
      return Left<Failure, WeatherDTO>(UnknownFailure(msg: e.toString()));
    }
  }
}
