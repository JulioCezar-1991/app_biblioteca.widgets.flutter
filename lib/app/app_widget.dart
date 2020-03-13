import 'package:app_flutter_biblioteca/app/themes/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final store = Modular.get<ThemeController>();
    return MaterialApp(
      navigatorKey: Modular.navigatorKey,
      title: 'Flutter Widgets',
      debugShowCheckedModeBanner: false,
      theme: store.getTheme(),
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
