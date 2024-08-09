import 'dart:ui';

import 'package:flutter_material/core/app_global.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceUtil {

  static Future<Locale> getLocale() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    String? languageCode = sharedPreferences.getString(AppGlobal.sharedPrefLocaleLanguageCode);

    if (languageCode == null) {
      await sharedPreferences.setString(AppGlobal.sharedPrefLocaleLanguageCode, AppGlobal.defaultLocale.languageCode);
      return AppGlobal.defaultLocale;
    }

    return Locale(languageCode!);
  }

  static Future<void> setLocale(Locale locale) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString(AppGlobal.sharedPrefLocaleLanguageCode, locale.languageCode);
  }

}