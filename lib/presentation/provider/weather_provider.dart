import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../core/core.dart';
import '../../data/data.dart';
import '../../domain/domain.dart';

final Provider<WeatherRemoteDataSource> weatherRemoteDataSourceProvider =
    Provider<WeatherRemoteDataSource>(
  (ProviderRef<WeatherRemoteDataSource> ref) =>
      WeatherRemoteDataSourceImpl(ApiClient(ref.read(dioProvider))),
);

final Provider<WeatherRepository> weatherRepositoryProvider = Provider<WeatherRepository>(
  (ProviderRef<WeatherRepository> ref) =>
      WeatherRepositoryImpl(ref.read(weatherRemoteDataSourceProvider)),
);

final Provider<GetWeatherUsecase> getWeatherUseCaseProvider = Provider<GetWeatherUsecase>(
  (ProviderRef<GetWeatherUsecase> ref) => GetWeatherUsecase(ref.read(weatherRepositoryProvider)),
);
