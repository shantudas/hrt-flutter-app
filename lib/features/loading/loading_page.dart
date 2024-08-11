import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import 'package:hrt_flutter_app/controller/localization_controller.dart';
import 'package:hrt_flutter_app/features/login/login_page.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  LocalizationController localizationController = Get.find();

  @override
  void initState() {
    super.initState();

    _getLocale();

    Future.delayed(Duration(seconds: 3), () {
      _goLogin();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  void _getLocale() {
    localizationController.loadLocale();
  }

  void _goLogin() {
    Get.to(LoginPage());
  }
}
