import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'core/utils/view_model/logger_provider_observable.dart';
import 'main_config.dart';
import 'presentation/app/my_app.dart';

Future<void> main() async {
  await configureApp();
  runApp(ProviderScope(
    observers: <ProviderObserver>[LoggerProviderObservable()],
    child: const MyApp(),
  ));
}
