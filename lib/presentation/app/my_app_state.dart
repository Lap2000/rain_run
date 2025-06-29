import 'dart:core';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/core.dart';

part 'my_app_state.freezed.dart';

@freezed
abstract class MyAppState with _$MyAppState implements BaseState {
  factory MyAppState({
    required PageState pageState,
    // required bool isLogged,
  }) = _MyAppState;

  factory MyAppState.initial() => MyAppState(
        // isLogged: false,
        pageState: const PageState.initial(),
      );
}
