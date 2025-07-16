// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppTextVi extends AppText {
  AppTextVi([String locale = 'vi']) : super(locale);

  @override
  String get appName => 'Chạy mưa';

  @override
  String get home => 'Trang chủ';

  @override
  String selectedLocation(Object selectedLocation) {
    return 'Location（$selectedLocation）';
  }

  @override
  String get addLocation => 'Thêm vị trí';

  @override
  String get yourLocation => 'Vị trí của bạn';

  @override
  String get unknown => 'Không xác định';

  @override
  String get now => 'Bây giờ';

  @override
  String get forecasts8day => 'Dự báo 8 ngày tới.';
}
