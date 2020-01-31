import 'package:app_flutter_biblioteca/app/themes/dark_theme.dart';
import 'package:app_flutter_biblioteca/app/themes/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final store = ThemeController();
    return MaterialApp(
      navigatorKey: Modular.navigatorKey,
      title: 'Flutter Widgets',
      debugShowCheckedModeBanner: false,
      theme: darkTheme(),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: [
        Locale("pt"),
      ],
      initialRoute: '/',
      onGenerateRoute: Modular.generateRoute,
    );
  }
}
