import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_material/core/constants/app_colors.dart';
import 'package:flutter_material/core/helper/UIUtil.dart';
import 'package:flutter_material/core/zrouters.dart';
import 'package:flutter_material/core/zstyle.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MenuItem extends HookConsumerWidget {

  final String label;
  final ZRoute? route;
  final Function? onTap;

  const MenuItem({
    super.key,
    required this.label,
    this.route,
    this.onTap,
  });



  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return GestureDetector(
      onTap: () {
        if (onTap == null) {
          return;
        }

        onTap!(route);
      },
      child: Card(
        margin: EdgeInsets.all(10),
        color: AppColors.lightOrange,
        elevation: 10,
        child: Container(
          padding: EdgeInsets.all(10), child: Text(label, style: ZStyle.instance.textStyleDefaultBold))
      ),
    );
  }





}