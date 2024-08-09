import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppGlobal {
  
  static GlobalKey<NavigatorState> globalNavigatorState = GlobalKey<NavigatorState>();
  static GlobalKey<ScaffoldMessengerState> globalScaffoldMessengerState = GlobalKey<ScaffoldMessengerState>();
  static Locale defaultLocale = const Locale("en");

  static const String sharedPrefLocaleLanguageCode = "localeLanguageName";


}