import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../services/services.dart';

// const bool kDebugLoggerProvider = true;

class LoggerProviderObservable extends ProviderObserver {
  @override
  void didUpdateProvider(
    ProviderBase<dynamic> provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    if (kDebugMode) {
      logger.d(
        '[Observable] ${provider.runtimeType}:\n'
        '{\n'
        '  "newValue": "$newValue"\n',
      );
    }
  }
}
