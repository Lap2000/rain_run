import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class BaseAppNotifier<S> extends StateNotifier<S> {
  BaseAppNotifier(super.state);

  void setState(S Function(S state) update) {
    if (!mounted) {
      return;
    }

    final S newState = update(state);
    if (!const DeepCollectionEquality().equals(state, newState)) {
      state = newState;
    }
  }
}
