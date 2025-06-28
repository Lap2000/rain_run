import 'package:flutter/material.dart';

import '../../languages/l10n/app_localizations.dart';

extension ContextExt on BuildContext {
  AppText? get t => AppText.of(this);
}
