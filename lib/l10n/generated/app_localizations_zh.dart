import 'app_localizations.dart';

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appName => 'Flutter 演示';

  @override
  String get titleLanding => '主页';

  @override
  String get titleDialogPlayground => '对话框详解例子';

  @override
  String get titleSnackbarPlayground => '小吃店例子';

  @override
  String get titleDialogTitle => '对话框屏幕标题';

  @override
  String get titleCounterBasic => '计数器（基本）';

  @override
  String get titleCounterFlutterHooks => '计数器 (Flutter Hooks)';

  @override
  String get titleCounterRiverpod => '计数器 (Riverpod)';

  @override
  String get labelDialogPlayground => '对话框屏幕例子';

  @override
  String get labelSnackbarPlayground => '小吃店例子';

  @override
  String get labelChangeLanguage => '改变语言';

  @override
  String get labelCounterBasic => '计数器（基本）';

  @override
  String get labelCounterFlutterHooks => '计数器 (Flutter Hooks)';

  @override
  String get labelCounterRiverpod => '计数器 (Riverpod)';

  @override
  String get labelIncrement => '增加';

  @override
  String get labelPushButtonNoOfTimes => '您已按下按钮这么多次:';

  @override
  String get labelTriggerInfoMessage => '触发简单讯息';

  @override
  String get labelTriggerDangerMessage => '触发危险讯息';

  @override
  String get labelTriggerSuccessMessage => '触发正面讯息';

  @override
  String get labelShowDialog => '展示对话框详解';

  @override
  String get labelClose => '关闭';

  @override
  String get labelReset => '重置';

  @override
  String get hintTextEnterMessageHere => '在此输入消息';

  @override
  String get errorRouteNotFound => 'Route not found!';

  @override
  String get shortMessageNotAvailable => 'N/A';
}
