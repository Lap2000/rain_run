import 'package:flutter_hooks/flutter_hooks.dart';

/// A modified [useEffect](ref link) hook that only runs once.
void useEffectOnce(Dispose? Function() effect) {
  return useEffect(effect, const <Object?>[]);
}
