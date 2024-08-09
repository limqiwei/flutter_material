import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_material/core/constants/app_colors.dart';
import 'package:flutter_material/core/helper/UIUtil.dart';
import 'package:flutter_material/core/helper/navigator_util.dart';
import 'package:flutter_material/core/provider/app_locale_provider.dart';
import 'package:flutter_material/core/widgets/base_scaffold.dart';
import 'package:flutter_material/core/zcore.dart';
import 'package:flutter_material/core/zrouters.dart';
import 'package:flutter_material/l10n/generated/app_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'widget/menu_item.dart';



class LandingScreen extends HookConsumerWidget {
  const LandingScreen({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final currentLocale = ref.watch(appLocaleProvider);

    final _counter = useState<int>(0);

    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.


    return BaseScaffold(
        title: title,
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 50, horizontal: 10),
          child: ListView(
            children: [

              MenuItem(
                label: ZCore.string.labelChangeLanguage,
                onTap: (_) {
                  List<Locale> supportedLocales = AppLocalizations.supportedLocales;
                  Locale nextLocale = supportedLocales.where((e) => e != currentLocale.value).first;
                  ref.watch(appLocaleProvider.notifier).updateLocale(nextLocale);
                },
              ),

              MenuItem(
                label: ZCore.string.labelSnackbarPlayground,
                route: ZRoute.snackbarPlayground,
                onTap: (route) {
                  NavigatorUtil.goTo(route);
                },
              ),

              MenuItem(
                label: ZCore.string.labelDialogPlayground,
                route: ZRoute.dialogPlayground,
                onTap: (route) {
                  NavigatorUtil.goTo(route);
                },
              ),

              MenuItem(
                label: ZCore.string.labelCounterBasic,
                route: ZRoute.counterBasic,
                onTap: (route) {
                  NavigatorUtil.goTo(route);
                },
              ),

              MenuItem(
                label: ZCore.string.labelCounterFlutterHooks,
                route: ZRoute.counterFlutterHooks,
                onTap: (route) {
                  NavigatorUtil.goTo(route);
                },
              ),

              MenuItem(
                label: ZCore.string.labelCounterRiverpod,
                route: ZRoute.counterRiverpod,
                onTap: (route) {
                  NavigatorUtil.goTo(route);
                },
              ),

            ],
          ),
        ),
    );

    return BaseScaffold(
      title: title,
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {
                  List<Locale> supportedLocales = AppLocalizations.supportedLocales;
                  Locale nextLocale = supportedLocales.where((e) => e != currentLocale.value).first;
                  ref.watch(appLocaleProvider.notifier).updateLocale(nextLocale);
                }, child: Text(ZCore.string.labelChangeLanguage)),
                const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                ElevatedButton(onPressed: () {
                  NavigatorUtil.goTo(ZRoute.dialogPlayground);
                }, child: Text(ZCore.string.labelDialogPlayground)),
                const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                ElevatedButton(onPressed: () {
                  NavigatorUtil.goTo(ZRoute.snackbarPlayground);
                }, child: Text(ZCore.string.labelSnackbarPlayground)),
              ],
            ),
            Padding(padding: EdgeInsets.all(10)),
            Text(ZCore.string.labelPushButtonNoOfTimes),
            Text(
              '${_counter.value}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () { _incrementCounter(_counter); },
        tooltip: ZCore.string.labelIncrement,
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );

  }

  void _incrementCounter(ValueNotifier<int> _counter) {
    _counter.value++;
  }

}