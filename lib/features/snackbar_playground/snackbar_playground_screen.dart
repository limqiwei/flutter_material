import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_material/core/constants/app_colors.dart';
import 'package:flutter_material/core/helper/UIUtil.dart';
import 'package:flutter_material/core/helper/dialog_util.dart';
import 'package:flutter_material/core/helper/snackbar_util.dart';
import 'package:flutter_material/core/widgets/base_scaffold.dart';
import 'package:flutter_material/core/widgets/form/text_area_widget.dart';
import 'package:flutter_material/core/zcore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SnackbarPlaygroundScreen extends HookConsumerWidget {

  final String title;

  const SnackbarPlaygroundScreen({
    super.key,
    required this.title,
  });


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final String longText = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum";

    final textAreaController = useTextEditingController();

    return BaseScaffold(
      title: title,
      body: Center(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(child: TextAreaWidget(controller: textAreaController)),
              OverflowBar(
                alignment: MainAxisAlignment.center,
                overflowAlignment: OverflowBarAlignment.center,
                children: [

                  ElevatedButton(onPressed: () {
                    if (!textAreaController.text.isEmpty) {
                      SnackbarUtil.info(textAreaController.text);
                    } else {
                      SnackbarUtil.info(
                          ZCore.string.shortMessageNotAvailable,
                          fontWeight: FontWeight.bold);
                    }
                  },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.info
                      ),
                      child: Text(ZCore.string.labelTriggerInfoMessage)
                  ),
                  UIUtil.horizontalPadding(5),

                  ElevatedButton(onPressed: () {
                    if (!textAreaController.text.isEmpty) {
                      SnackbarUtil.danger(textAreaController.text);
                    } else {
                      SnackbarUtil.danger('N/A', fontWeight: FontWeight.bold);
                    }
                  },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.danger
                      ),
                      child: Text(ZCore.string.labelTriggerDangerMessage)
                  ),
                  UIUtil.horizontalPadding(5),

                  ElevatedButton(onPressed: () {
                    if (!textAreaController.text.isEmpty) {
                      SnackbarUtil.success(textAreaController.text);
                    } else {
                      SnackbarUtil.success('N/A', fontWeight: FontWeight.bold);
                    }
                  },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.success
                      ),
                      child: Text(ZCore.string.labelTriggerSuccessMessage)
                  ),
                  UIUtil.horizontalPadding(5),

              ],
              )


            ],
          ),
        ),
      ),
    );
  }
}

