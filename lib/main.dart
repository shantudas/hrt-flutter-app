import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hrt_flutter_app/controller/localization_controller.dart';
import 'package:hrt_flutter_app/features/loading/loading_page.dart';
import 'package:hrt_flutter_app/features/login/login_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hrt_flutter_app/languages/l10n/l10n.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'HRT',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialBinding: BindingsBuilder(() {
        Get.lazyPut<LocalizationController>(() => LocalizationController(), fenix: true);
      }),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: L10n.all,
      // locale: const Locale('bn'),
      // fallbackLocale: const Locale('bn'),
      // locale: Get.find<LocalizationController>().locale,
      // supportedLocales: Get.find<LanguageController>().supportedLocales,
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      home: const LoadingPage(),
    );
  }
}
