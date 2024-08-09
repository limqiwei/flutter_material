import 'package:flutter/material.dart';
import 'package:flutter_material/core/constants/app_colors.dart';
import 'package:flutter_material/core/helper/navigator_util.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class BaseScaffold extends ConsumerWidget {

  final String title;
  final Widget? body;
  final FloatingActionButton? floatingActionButton;

  const BaseScaffold({
    super.key,
    this.title = 'Title',
    this.body,
    this.floatingActionButton,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.info,
        title: Text(title),
      ),
      body: body,
      floatingActionButton: floatingActionButton,
    );
  }

}
