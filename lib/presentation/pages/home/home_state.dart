import 'dart:core';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/core.dart';
import '../../../domain/domain.dart';

part 'home_state.freezed.dart';

@freezed
abstract class HomeState with _$HomeState implements BaseState {
  const factory HomeState({
    required PageState pageState,
    Failure? error,
    WeatherEntity? weather,
  }) = _HomeState;

  factory HomeState.initial() => const HomeState(
        pageState: PageState.initial(),
      );
}
