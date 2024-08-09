import 'package:flutter/material.dart';
import 'package:flutter_material/core/zcore.dart';
import 'package:flutter_material/features/counter_basic/screen/counter_basic_screen.dart';
import 'package:flutter_material/features/counter_flutter_hooks/screen/counter_flutter_hooks_screen.dart';
import 'package:flutter_material/features/counter_riverpod/screen/counter_riverpod_screen.dart';
import 'package:flutter_material/features/dialog_playground/dialog_playground_screen.dart';
import 'package:flutter_material/features/landing/landing_screen.dart';
import 'package:flutter_material/features/snackbar_playground/snackbar_playground_screen.dart';

enum ZRoute {
  root,
  landing,
  dialogPlayground,
  snackbarPlayground,
  counterBasic,
  counterFlutterHooks,
  counterRiverpod,
  ;

  String get routeName {
    return "/$name";
  }
}

class ZRouter {

  static Map<String, Widget Function(BuildContext)> get routings => {
    ZRoute.root.routeName : (c) => LandingScreen(title: ZCore.string.titleLanding),
    ZRoute.dialogPlayground.routeName : (c) => DialogPlaygroundScreen(title: ZCore.string.titleDialogPlayground),
    ZRoute.snackbarPlayground.routeName : (c) => SnackbarPlaygroundScreen(title: ZCore.string.titleSnackbarPlayground),
    ZRoute.counterBasic.routeName : (c) => CounterBasicScreen(title: ZCore.string.titleCounterBasic),
    ZRoute.counterFlutterHooks.routeName : (c) => CounterFlutterHooksScreen(title: ZCore.string.titleCounterFlutterHooks),
    ZRoute.counterRiverpod.routeName : (c) => CounterRiverpodScreen(title: ZCore.string.titleCounterRiverpod),
  };

}