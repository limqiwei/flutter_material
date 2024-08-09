import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_material/core/constants/app_colors.dart';
import 'package:flutter_material/core/zcore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TextAreaWidget extends HookConsumerWidget {

  final _controller;

  const TextAreaWidget({
    super.key,
    required TextEditingController controller
  }) : _controller = controller;



  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return Card(
      elevation: 5,
      margin: EdgeInsets.all(50),
      color: AppColors.ivory,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.grey),
          borderRadius: BorderRadius.all(Radius.circular(15.0))
        ),
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: TextField(
            controller: _controller,
            maxLines: 5,
            decoration: InputDecoration.collapsed(hintText: ZCore.string.hintTextEnterMessageHere,
            ),
          ),
        ),
      ),
    );

  }

}