import 'dart:async';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/core.dart';
import '../../../domain/domain.dart';
import '../../provider/weather_provider.dart';
import 'home_state.dart';

final AutoDisposeStateNotifierProvider<HomeViewModel, HomeState> homeProvider =
    StateNotifierProvider.autoDispose<HomeViewModel, HomeState>(
  (AutoDisposeStateNotifierProviderRef<HomeViewModel, HomeState> ref) {
    final GetWeatherUsecase getWeatherUsecase = ref.watch(
      getWeatherUseCaseProvider,
    );

    return HomeViewModel(getWeatherUsecase: getWeatherUsecase);
  },
);

class HomeViewModel extends BaseViewModel<HomeState> {
  HomeViewModel({required this.getWeatherUsecase}) : super(HomeState.initial());

  final GetWeatherUsecase getWeatherUsecase;

  @override
  Future<void> dispose() async {
    super.dispose();
  }

  void callError() {
    setState((HomeState state) {
      return state.copyWith(
        pageState: const PageState.failure(error: 'No Connection'),
        error: const NoConnectionFailure(),
      );
    });
  }

  @override
  Future<void> onInit() async {
    //   final Either<Failure, WeatherEntity> result = await getWeatherUsecase.call(
    //     33.44,
    //     -94.04,
    //   );

    //   result.fold(
    //     (Failure failure) {
    //       setState(
    //         (HomeState state) => state.copyWith(
    //           pageState: PageState.failure,
    //           error: failure,
    //         ),
    //       );
    //     },
    //     (WeatherEntity weather) {
    //       setState(
    //         (HomeState state) => state.copyWith(
    //           pageState: PageState.success,
    //           weather: weather,
    //         ),
    //       );
    //     },
    //   );
  }
}
