import 'dart:core';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/core.dart';

part 'weather_state.freezed.dart';

@freezed
abstract class WeatherState with _$WeatherState implements BaseState {
  factory WeatherState({
    required PageState pageState,
  }) = _WeatherState;

  factory WeatherState.initial() => WeatherState(
        pageState: const PageState.initial(),
      );
}
