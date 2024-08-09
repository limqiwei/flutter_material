import 'package:flutter/cupertino.dart';
import 'package:flutter_material/core/app_global.dart';

class UIUtil {

  static double percentageOfWidth(double percentage) => (percentage/100) * MediaQuery.of(AppGlobal.globalNavigatorState.currentContext!).size.width;

  static double percentageOfHeight(double percentage) => (percentage/100) * MediaQuery.of(AppGlobal.globalNavigatorState.currentContext!).size.height;

  static Padding verticalPadding(double size) => Padding(padding: EdgeInsets.symmetric(vertical: size));
  static Padding horizontalPadding(double size) => Padding(padding: EdgeInsets.symmetric(horizontal: size));

}