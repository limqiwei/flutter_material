import 'app_localizations.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appName => 'Flutter Demo';

  @override
  String get titleLanding => 'Home Page';

  @override
  String get titleDialogPlayground => 'Dialog Playground';

  @override
  String get titleSnackbarPlayground => 'Snackbar Playground';

  @override
  String get titleDialogTitle => 'Dialog Title';

  @override
  String get titleCounterBasic => 'Counter (Basic)';

  @override
  String get titleCounterFlutterHooks => 'Counter (Flutter Hooks)';

  @override
  String get titleCounterRiverpod => 'Counter (Riverpod)';

  @override
  String get labelDialogPlayground => 'Dialog Playground';

  @override
  String get labelSnackbarPlayground => 'Snackbar Playground';

  @override
  String get labelChangeLanguage => 'Change Language';

  @override
  String get labelCounterBasic => 'Counter (Basic)';

  @override
  String get labelCounterFlutterHooks => 'Counter (Flutter Hooks)';

  @override
  String get labelCounterRiverpod => 'Counter (Riverpod)';

  @override
  String get labelIncrement => 'Increment';

  @override
  String get labelPushButtonNoOfTimes => 'You have pushed the button this many times:';

  @override
  String get labelTriggerInfoMessage => 'Trigger Simple Message';

  @override
  String get labelTriggerDangerMessage => 'Trigger Danger Message';

  @override
  String get labelTriggerSuccessMessage => 'Trigger Success Message';

  @override
  String get labelShowDialog => 'Show Dialog';

  @override
  String get labelClose => 'Close';

  @override
  String get labelReset => 'Reset';

  @override
  String get hintTextEnterMessageHere => 'Enter message here';

  @override
  String get errorRouteNotFound => 'Route not found!';

  @override
  String get shortMessageNotAvailable => 'N/A';
}
