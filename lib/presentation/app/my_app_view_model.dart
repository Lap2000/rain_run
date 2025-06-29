import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../core/core.dart';
import 'my_app_state.dart';

final AutoDisposeStateNotifierProvider<MyAppViewModel, MyAppState> myAppProvider =
    StateNotifierProvider.autoDispose<MyAppViewModel, MyAppState>(
  (AutoDisposeStateNotifierProviderRef<MyAppViewModel, MyAppState> ref) {
    // final weatherRepository = ref.watch(weatherRepositoryProvider);

    return MyAppViewModel();
  },
);

class MyAppViewModel extends BaseViewModel<MyAppState> {
  MyAppViewModel() : super(MyAppState.initial());

  @override
  Future<void> dispose() async {
    super.dispose();
  }

  @override
  void onInit() {}
}
