import 'package:flutter/material.dart';
import 'package:flutter_material/core/app_global.dart';
import 'package:flutter_material/core/constants/app_colors.dart';
import 'package:flutter_material/core/constants/app_durations.dart';
import 'package:flutter_material/core/extensions/text_style.dart';
import 'package:flutter_material/core/helper/UIUtil.dart';
import 'package:flutter_material/core/zcore.dart';
import 'package:flutter_material/core/zstyle.dart';

enum SnackbarTypes {
  success,
  danger,
  info,
  ;

  Color get color {
    switch(this) {
      case success:
        return AppColors.success;
      case danger:
        return AppColors.danger;
      case info:
        return AppColors.info;
    }
  }

  IconData get iconData {
    switch(this) {
      case success:
        return Icons.check_circle_outline;
      case danger:
        return Icons.dangerous_rounded;
      case info:
        return Icons.info_outline_rounded;
    }
  }
}

class SnackbarUtil {

  static danger(String text, {
    FontWeight fontWeight = FontWeight.normal,
  }) {
    _showSnackbar(text, SnackbarTypes.danger, fontWeight: fontWeight);
  }


  static info(String text, {
    FontWeight fontWeight = FontWeight.normal,
  }) {
    _showSnackbar(text, SnackbarTypes.info, fontWeight: fontWeight);
  }


  static success(String text, {
    FontWeight fontWeight = FontWeight.normal,
  }) {
    _showSnackbar(text, SnackbarTypes.success, fontWeight: fontWeight);
  }

  static _showSnackbar(String content, SnackbarTypes type, {
    FontWeight fontWeight = FontWeight.normal,
  }) {
    if (AppGlobal.globalScaffoldMessengerState?.currentState != null) {
      AppGlobal.globalScaffoldMessengerState.currentState!.hideCurrentSnackBar();
      AppGlobal.globalScaffoldMessengerState.currentState!.showSnackBar(
        SnackBar(
          content: Row(children: [
            Icon(type.iconData),
            UIUtil.horizontalPadding(2),
            Flexible(child:
              Text(content,
                  style: ZStyle.instance.textStyleDefaultBold,
              )
            )
          ],),
          backgroundColor: type.color,
          showCloseIcon: false,
          dismissDirection: DismissDirection.none,
          closeIconColor: AppColors.danger,
          duration: ZCore.durations.durationSnackbarDefault,

          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.fromLTRB(
              UIUtil.percentageOfWidth(10),
              UIUtil.percentageOfWidth(10),
              UIUtil.percentageOfWidth(10),
              UIUtil.percentageOfWidth(2)
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))
          ),
        ),
        snackBarAnimationStyle: AnimationStyle(
          duration: ZCore.durations.durationSnackbarAnimation,
          reverseDuration: ZCore.durations.durationSnackbarReverseAnimation,
        ),
      );
    }
  }

}