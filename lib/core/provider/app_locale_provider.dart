import 'dart:ui';

import 'package:flutter_material/core/notifier/async_app_locale_notifier.dart';
import 'package:riverpod/riverpod.dart';

final appLocaleProvider =  AsyncNotifierProvider<AsyncAppLocaleNotifier, Locale>(() {
  return AsyncAppLocaleNotifier();
});