import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_zh.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('zh')
  ];

  /// No description provided for @appName.
  ///
  /// In en, this message translates to:
  /// **'Flutter Demo'**
  String get appName;

  /// No description provided for @titleLanding.
  ///
  /// In en, this message translates to:
  /// **'Home Page'**
  String get titleLanding;

  /// No description provided for @titleDialogPlayground.
  ///
  /// In en, this message translates to:
  /// **'Dialog Playground'**
  String get titleDialogPlayground;

  /// No description provided for @titleSnackbarPlayground.
  ///
  /// In en, this message translates to:
  /// **'Snackbar Playground'**
  String get titleSnackbarPlayground;

  /// No description provided for @titleDialogTitle.
  ///
  /// In en, this message translates to:
  /// **'Dialog Title'**
  String get titleDialogTitle;

  /// No description provided for @titleCounterBasic.
  ///
  /// In en, this message translates to:
  /// **'Counter (Basic)'**
  String get titleCounterBasic;

  /// No description provided for @titleCounterFlutterHooks.
  ///
  /// In en, this message translates to:
  /// **'Counter (Flutter Hooks)'**
  String get titleCounterFlutterHooks;

  /// No description provided for @titleCounterRiverpod.
  ///
  /// In en, this message translates to:
  /// **'Counter (Riverpod)'**
  String get titleCounterRiverpod;

  /// No description provided for @labelDialogPlayground.
  ///
  /// In en, this message translates to:
  /// **'Dialog Playground'**
  String get labelDialogPlayground;

  /// No description provided for @labelSnackbarPlayground.
  ///
  /// In en, this message translates to:
  /// **'Snackbar Playground'**
  String get labelSnackbarPlayground;

  /// No description provided for @labelChangeLanguage.
  ///
  /// In en, this message translates to:
  /// **'Change Language'**
  String get labelChangeLanguage;

  /// No description provided for @labelCounterBasic.
  ///
  /// In en, this message translates to:
  /// **'Counter (Basic)'**
  String get labelCounterBasic;

  /// No description provided for @labelCounterFlutterHooks.
  ///
  /// In en, this message translates to:
  /// **'Counter (Flutter Hooks)'**
  String get labelCounterFlutterHooks;

  /// No description provided for @labelCounterRiverpod.
  ///
  /// In en, this message translates to:
  /// **'Counter (Riverpod)'**
  String get labelCounterRiverpod;

  /// No description provided for @labelIncrement.
  ///
  /// In en, this message translates to:
  /// **'Increment'**
  String get labelIncrement;

  /// No description provided for @labelPushButtonNoOfTimes.
  ///
  /// In en, this message translates to:
  /// **'You have pushed the button this many times:'**
  String get labelPushButtonNoOfTimes;

  /// No description provided for @labelTriggerInfoMessage.
  ///
  /// In en, this message translates to:
  /// **'Trigger Simple Message'**
  String get labelTriggerInfoMessage;

  /// No description provided for @labelTriggerDangerMessage.
  ///
  /// In en, this message translates to:
  /// **'Trigger Danger Message'**
  String get labelTriggerDangerMessage;

  /// No description provided for @labelTriggerSuccessMessage.
  ///
  /// In en, this message translates to:
  /// **'Trigger Success Message'**
  String get labelTriggerSuccessMessage;

  /// No description provided for @labelShowDialog.
  ///
  /// In en, this message translates to:
  /// **'Show Dialog'**
  String get labelShowDialog;

  /// No description provided for @labelClose.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get labelClose;

  /// No description provided for @labelReset.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get labelReset;

  /// No description provided for @hintTextEnterMessageHere.
  ///
  /// In en, this message translates to:
  /// **'Enter message here'**
  String get hintTextEnterMessageHere;

  /// No description provided for @errorRouteNotFound.
  ///
  /// In en, this message translates to:
  /// **'Route not found!'**
  String get errorRouteNotFound;

  /// No description provided for @shortMessageNotAvailable.
  ///
  /// In en, this message translates to:
  /// **'N/A'**
  String get shortMessageNotAvailable;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'zh'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'zh': return AppLocalizationsZh();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
