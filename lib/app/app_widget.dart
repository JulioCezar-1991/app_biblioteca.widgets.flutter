import 'package:biblioteca_framework_flutter_github_io/app/themes/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:provider/provider.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeController themeController =
        Provider.of<ThemeController>(context);
    return Observer(
      name: 'theme_store_observer',
      builder: (BuildContext context) => MaterialApp(
        title: 'Flutter Widgets',
        debugShowCheckedModeBanner: false,
        theme: themeController.theme,
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate
        ],
        supportedLocales: [
          Locale("pt"),
        ],
        initialRoute: '/',
      ).modular(),
    );
  }
}
