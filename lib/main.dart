import 'package:flutter/material.dart';

import 'main_config.dart';
import 'presentation/app/my_appp.dart';

Future<void> main() async {
  await configureApp();
  runApp(const MyApp());
}
