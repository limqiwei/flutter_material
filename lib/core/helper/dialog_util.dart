import 'package:flutter/material.dart';
import 'package:flutter_material/core/app_global.dart';
import 'package:flutter_material/core/constants/app_colors.dart';
import 'package:flutter_material/core/helper/UIUtil.dart';
import 'package:flutter_material/core/helper/navigator_util.dart';
import 'package:flutter_material/core/zcore.dart';
import 'package:flutter_material/core/zstyle.dart';

class DialogUtil {

  static info(String text) {

    showDialog(context: AppGlobal.globalNavigatorState.currentContext!,
      builder: (BuildContext c)
      {
        return AlertDialog(
          insetPadding: EdgeInsets.fromLTRB(
              UIUtil.percentageOfWidth(15),
              UIUtil.percentageOfWidth(5),
              UIUtil.percentageOfWidth(15),
              UIUtil.percentageOfWidth(5),
          ),
          title: Text(ZCore.string.titleDialogTitle),
          icon: Icon(Icons.ac_unit),
          content: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                  child: SingleChildScrollView(
                      child: Column(
                          children: [
                            Text(text),
                          ]
                      )
                  )
              )
            ],
          ),
          actions: [
            TextButton(onPressed: () {
              // NavigatorUtil.back();
              Navigator.pop(c);
            },
              child: Text(ZCore.string.labelClose),
              style: ZStyle.instance.orangeTextButtonStyle,
            )
          ],
        );
      },
      barrierDismissible: false,

    );
  }

}