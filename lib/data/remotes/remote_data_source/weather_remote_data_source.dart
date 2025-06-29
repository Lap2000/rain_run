import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../core/core.dart';
import '../../models/weather/weather_model.dart';
import '../network/api_client.dart';

abstract class WeatherRemoteDataSource {
  Future<Either<Failure, WeatherResponse>> fetchOpenWeather(double lat, double lon);
}

class WeatherRemoteDataSourceImpl implements WeatherRemoteDataSource {
  WeatherRemoteDataSourceImpl(this.apiClient);
  final ApiClient apiClient;

  @override
  Future<Either<Failure, WeatherResponse>> fetchOpenWeather(double lat, double lon) async {
    try {
      final WeatherResponse response = await apiClient.getOneCallWeather(
        lat: lat,
        lon: lon,
        apiKey: AppEnv.instance.openWeatherMapApiKey,
      );
      return Right<Failure, WeatherResponse>(response);
    } on DioException catch (e) {
      if (e.response != null) {
        final int statusCode = e.response?.statusCode ?? 0;
        final String message = e.response?.data.toString() ?? 'Unknown error';

        if (statusCode >= 400 && statusCode < 500) {
          return Left<Failure, WeatherResponse>(ClientFailure(msg: message));
        } else if (statusCode >= 500) {
          return Left<Failure, WeatherResponse>(ServerFailure(msg: message));
        } else {
          return Left<Failure, WeatherResponse>(UnknownFailure(msg: message));
        }
      } else {
        // Network error, no response
        return const Left<Failure, WeatherResponse>(NoConnectionFailure());
      }
    } catch (e) {
      // UnKnow error, no response
      return Left<Failure, WeatherResponse>(UnknownFailure(msg: e.toString()));
    }
  }
}
