import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_material/core/app_global.dart';
import 'package:flutter_material/core/helper/app_localization_util.dart';
import 'package:flutter_material/core/provider/app_locale_provider.dart';
import 'package:flutter_material/core/zrouters.dart';
import 'package:flutter_material/l10n/generated/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';



void main() async {
  await init();
  runApp(const ProviderScope(child: MyApp()));
}

Future<void> init() async {
  await WidgetsFlutterBinding.ensureInitialized();
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return MaterialApp(
      home: AppRoot(),
    );



  }
}

class AppRoot extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final _locale = ref.watch(appLocaleProvider);



    return MaterialApp(
      // Note:
      // Have to set title this way because the context will not be updated in
      // this same frame as those child which can read the Locale passed in this context
      title: AppLocalizationUtil.lookup(_locale.value).appName,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      localizationsDelegates: [
        AppLocalizations.delegate,
        ...GlobalMaterialLocalizations.delegates,
      ],
      locale: _locale.value,
      supportedLocales: AppLocalizations.supportedLocales,
      initialRoute: ZRoute.root.routeName,
      routes: ZRouter.routings,
      navigatorKey: AppGlobal.globalNavigatorState,
      scaffoldMessengerKey: AppGlobal.globalScaffoldMessengerState,
      debugShowCheckedModeBanner: false,
    );
  }

}

