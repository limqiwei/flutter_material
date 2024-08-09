import 'package:flutter/painting.dart';
import 'package:flutter_material/core/constants/app_colors.dart';



extension ZTextStyle on TextStyle {

  TextStyle get bold => merge(const TextStyle(fontWeight: FontWeight.bold));
}

extension ZTextStyleOverflow on TextStyle {
  TextStyle get overflowEllipsis => merge(TextStyle(overflow: TextOverflow.ellipsis));
  TextStyle get overflowFade => merge(TextStyle(overflow: TextOverflow.fade));
  TextStyle get overflowClip => merge(TextStyle(overflow: TextOverflow.clip));
  TextStyle get overflowVisible => merge(TextStyle(overflow: TextOverflow.visible));
}

extension ZTextStyleColor on TextStyle {

  TextStyle get colorBlack => merge(TextStyle(color: AppColors.black));
  TextStyle get colorSuccess => merge(TextStyle(color: AppColors.success));
  TextStyle get colorDanger => merge(TextStyle(color: AppColors.danger));
  TextStyle get colorInfo => merge(TextStyle(color: AppColors.info));

}