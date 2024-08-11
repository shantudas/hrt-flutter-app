import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalizationController extends GetxController {

  void setLocale(Locale? locale) {
    saveLocale(locale!);
    Get.updateLocale(locale);
  }

  void loadLocale() async {
    final prefs = await SharedPreferences.getInstance();
    final localeString = prefs.getString('locale');
    debugPrint('LoadLocale :: $localeString');
    if (localeString != null) {
      // Get.updateLocale(Locale.fromSubtags(localeString.split('-')));
      Get.updateLocale(Locale(localeString));
      debugPrint('LoadLocale :: ${Get.locale}');
    }
  }

  void saveLocale(Locale locale) async {
    debugPrint('saveLocale :: ${locale.toString()}');
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('locale', locale.toString());
  }
}
