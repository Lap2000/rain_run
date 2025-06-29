import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../core.dart';

/// Flutter lifecycle hook that calls a function after the component is mounted.
/// Use useListener if you want to listen to changes in a provider and handle errors.
void useFailureStateListener<S extends BaseState>(
    void Function(String) callback, WidgetRef ref, ProviderListenable<S> viewModelProvider) {
  return useEffectOnce(() {
    final ProviderSubscription<S> sub = ref.listenManual<S>(viewModelProvider, (S? prev, S next) {
      if (next.pageState.isFailure) {
        final String error = next.pageState.getErrorMessage ?? 'An unknown error occurred';
        Future<dynamic>.microtask(() {
          callback(error);
        });
      }
    });
    return sub.close;
  });
}
