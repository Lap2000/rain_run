// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppTextEn extends AppText {
  AppTextEn([String locale = 'en']) : super(locale);

  @override
  String get appName => 'RainRun';

  @override
  String get home => 'Home';

  @override
  String selectedLocation(Object selectedLocation) {
    return 'Location（$selectedLocation）';
  }

  @override
  String get addLocation => 'Add location';

  @override
  String get yourLocation => 'Your location';

  @override
  String get unknown => 'Unknown';

  @override
  String get now => 'Now';

  @override
  String get forecasts8day => '8-Days Forecasts';
}
