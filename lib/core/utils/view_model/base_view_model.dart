import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'base_state.dart';

export 'base_notifier.dart';
export 'base_state.dart';
export 'logger_provider_observable.dart';

abstract class ViewModel<S> extends StateNotifier<S> {
  ViewModel(super.state);
}

abstract class BaseViewModel<S extends BaseState> extends ViewModel<S> {
  BaseViewModel(super.state) {
    onInit();
  }

  final List<StreamSubscription<dynamic>> _streamSubscriptions =
      List<StreamSubscription<dynamic>>.empty(growable: true);

  @protected
  void onInit();

  void setState(S Function(S state) update) {
    if (!mounted) {
      return;
    }

    final S newState = update(state);
    if (!const DeepCollectionEquality().equals(state, newState)) {
      state = newState;
    }
  }

  void listen<T>({
    required Stream<T> stream,
    required void Function(T data) onData,
    void Function(Object error)? onError,
  }) {
    final StreamSubscription<T> subscription = stream.listen(onData)
      ..onError(
        onError,
      );
    _streamSubscriptions.add(subscription);
  }

  @override
  void dispose() {
    super.dispose();
    for (final StreamSubscription<dynamic> subscription in _streamSubscriptions) {
      subscription.cancel();
    }
  }
}
