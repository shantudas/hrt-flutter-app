import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:hrt_flutter_app/controller/localization_controller.dart';
import 'package:hrt_flutter_app/features/home/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    super.key,
  });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  LocalizationController localizationController = Get.find();

  @override
  void initState() {
    super.initState();

    // localizationController.loadLocale();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.loginPageAppBarTitle),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // DropdownButton<Locale>(
            //   icon: const Icon(Icons.settings, color: Colors.black),
            //   value: localizationController.locale,
            //   items: localizationController.supportedLocales.map((locale) {
            //     return DropdownMenuItem(
            //       value: locale,
            //       child: Text(
            //           locale.languageCode), // Use language code for display
            //     );
            //   }).toList(),
            //   onChanged: localizationController.setLocale,
            // ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  onPressed: () {
                    localizationController.setLocale(Locale('en'));
                  },
                  child: Text('English'),
                ),
                const SizedBox(width: 8),
                OutlinedButton(
                  onPressed: () {
                    localizationController.setLocale(Locale('bn'));
                  },
                  child: Text('Bengali'),
                ),
              ],
            ),

            TextButton(
              onPressed: () {
                Get.to(HomePage());
              },
              child: Text(AppLocalizations.of(context)!.loginPageButton),
            ),
          ],
        ),
      ),
    );
  }
}
