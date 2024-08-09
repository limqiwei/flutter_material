import 'dart:ui';

import 'package:flutter_material/core/app_global.dart';
import 'package:flutter_material/l10n/generated/app_localizations.dart';

class AppLocalizationUtil {

  static AppLocalizations get fallbackLocalizations {
    return lookupAppLocalizations(AppGlobal.defaultLocale);
  }

  static AppLocalizations get localizations {
    if (AppGlobal.globalNavigatorState.currentState != null) {
      AppLocalizations? appLocalizations = AppLocalizations.of(AppGlobal.globalNavigatorState!.currentContext!);
      return appLocalizations ?? fallbackLocalizations;
    }
    return fallbackLocalizations;
  }

  static AppLocalizations lookup(Locale? locale) {
    return lookupAppLocalizations(locale ?? AppGlobal.defaultLocale);
  }

}