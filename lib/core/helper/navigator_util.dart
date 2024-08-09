import 'package:flutter/cupertino.dart';
import 'package:flutter_material/core/app_global.dart';
import 'package:flutter_material/core/helper/snackbar_util.dart';
import 'package:flutter_material/core/zcore.dart';
import 'package:flutter_material/core/zrouters.dart';

class NavigatorUtil {

  static void back() {
    if (AppGlobal.globalNavigatorState?.currentContext != null) {
      Navigator.of(AppGlobal.globalNavigatorState!.currentContext!).pop([]);
    }
  }

  static void goTo(ZRoute route) {
    if (AppGlobal.globalNavigatorState?.currentContext != null) {

      if (ZRouter.routings.keys.where((key) => key == route.routeName).firstOrNull == null) {
        SnackbarUtil.danger(ZCore.string.errorRouteNotFound);
        return;
      }

      Navigator.of(AppGlobal.globalNavigatorState!.currentContext!).pushNamed(route.routeName);
    }
  }

}