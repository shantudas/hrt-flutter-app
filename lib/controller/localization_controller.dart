import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalizationController extends GetxController {
  Locale _locale = const Locale('en'); // Default locale
  final List<Locale> supportedLocales = [
    const Locale('en'),
    const Locale('bn'),
  ];

  Locale get locale => _locale;

  void setLocale(Locale? locale) {
    if (!supportedLocales.contains(locale)) return;
    _locale = locale!;

    debugPrint('setLocale :: $_locale');

    Get.updateLocale(_locale);

    // update();
  }

  void loadLocale() async {
    final prefs = await SharedPreferences.getInstance();
    final localeString = prefs.getString('locale');
    debugPrint('LoadLocale :: $localeString');
    if (localeString != null) {
      // Get.updateLocale(Locale.fromSubtags(localeString.split('-')));
      Get.updateLocale(Locale(localeString));
    }
  }

  void saveLocale(Locale locale) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('locale', locale.toString());
  }
}
