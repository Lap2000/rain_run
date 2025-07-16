import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/core.dart';
import '../../../domain/domain.dart';
import '../../models/weather_model.dart';
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
    final Locale deviceLocale = WidgetsBinding.instance.platformDispatcher.locale;
    final Either<Failure, WeatherEntity> result = await getWeatherUsecase.call(
      10.835135626582732,
      106.63720448636751,
      deviceLocale.languageCode,
    );

    result.fold(
      (Failure failure) {
        setState(
          (HomeState state) => state.copyWith(
            pageState: PageState.failure(error: failure.msg ?? 'Unkown'),
            error: failure,
          ),
        );
      },
      (WeatherEntity weatherEntity) {
        final WeatherModel weather = weatherEntity.toUIModel();
        setState(
          (HomeState state) => state.copyWith(
            pageState: const PageState.success(),
            weather: weather,
          ),
        );
      },
    );
  }
}
