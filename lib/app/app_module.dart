import 'package:biblioteca_framework_flutter_github_io/app/app_controller.dart';
import 'package:biblioteca_framework_flutter_github_io/app/modules/home/home_page.dart';
import 'package:biblioteca_framework_flutter_github_io/app/modules/splash/splash_page.dart';
import 'package:biblioteca_framework_flutter_github_io/app/themes/theme_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:biblioteca_framework_flutter_github_io/app/app_widget.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
        Bind((i) => ThemeController()),
      ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => SplashPage()),
    ChildRoute('/home', child: (_, args) => HomePage()),
  ];

  Widget get bootstrap => AppWidget();
}
