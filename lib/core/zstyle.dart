import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_material/core/constants/app_colors.dart';


class ZStyle {

  ZStyle._internal();

  static ZStyle instance = ZStyle._internal();

  /// Default Style
  ///
  /// Color: Black
  /// Overflow: Ellipsis
  TextStyle get textStyleDefault => const TextStyle(
    color: AppColors.black,
    overflow: TextOverflow.ellipsis,
  );

  /// Bolded version of [textStyleDefault]
  TextStyle get textStyleDefaultBold => const TextStyle(
    color: AppColors.black,
    overflow: TextOverflow.ellipsis,
    fontWeight: FontWeight.bold,
  );

  ButtonStyle get orangeTextButtonStyle => ButtonStyle(
    backgroundColor: WidgetStateProperty.all(AppColors.lightOrange),
  );


}

