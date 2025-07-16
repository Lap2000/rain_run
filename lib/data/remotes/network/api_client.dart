import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../dto/weather/weather_dto.dart';
import 'api_path.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: 'https://api.openweathermap.org/data/3.0/')
abstract class ApiClient {
  factory ApiClient(
    Dio dio, {
    String? baseUrl,
  }) = _ApiClient;

  @GET(ApiPath.onecall)
  Future<WeatherDTO> getOneCallWeather({
    @Query('lat') required double lat,
    @Query('lon') required double lon,
    @Query('appid') required String apiKey,
    @Query('exclude') String exclude = 'minutely,alerts',
    @Query('units') String units = 'metric',
    @Query('lang') required String lang,
  });
}
