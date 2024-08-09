import 'package:flutter_material/core/constants/app_durations.dart';
import 'package:flutter_material/core/helper/app_localization_util.dart';
import 'package:flutter_material/l10n/generated/app_localizations.dart';

import 'zstyle.dart';

class ZCore {

  static AppLocalizations get string => AppLocalizationUtil.localizations;

  static AppDurations get durations => AppDurations.instance;

  static ZStyle get styles => ZStyle.instance;

}