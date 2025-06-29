import 'package:flutter/foundation.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'use_effect_once.dart';

/// Flutter lifecycle hook that calls a function when the component will
/// unmount. Use useLifecycles if you need both a mount and unmount function.
/// dispose
void useUnmount(VoidCallback callback) {
  final ObjectRef<VoidCallback> callbackRef = useRef(
    callback,
  )..value = callback;
  return useEffectOnce(() => () => callbackRef.value());
}
