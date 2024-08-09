import 'dart:async';
import 'dart:ui';

import 'package:flutter_material/core/helper/shared_preference_util.dart';
import 'package:riverpod/riverpod.dart';

class AsyncAppLocaleNotifier extends AsyncNotifier<Locale> {


  FutureOr<Locale> _fetchLocale() async {
    return SharedPreferenceUtil.getLocale();
  }

  @override
  FutureOr<Locale> build() async {
    return await _fetchLocale();
  }

  Future<void> updateLocale(Locale locale) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      await SharedPreferenceUtil.setLocale(locale);
      return await _fetchLocale();
    });
  }

}