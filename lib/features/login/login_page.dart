import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:hrt_flutter_app/controller/localization_controller.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    super.key,
  });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  LocalizationController languageController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.appTitle),
      ),
      body: Center(
        child: DropdownButton<Locale>(
          icon: const Icon(Icons.settings, color: Colors.black),
          value: languageController.locale,
          items: languageController.supportedLocales.map((locale) {
            return DropdownMenuItem(
              value: locale,
              child: Text(locale.languageCode), // Use language code for display
            );
          }).toList(),
          onChanged: languageController.setLocale,
        ),
      ),
    );
  }
}
