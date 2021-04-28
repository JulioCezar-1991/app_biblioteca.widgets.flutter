import 'package:biblioteca_framework_flutter_github_io/app/app_widget.dart';
import 'package:biblioteca_framework_flutter_github_io/app/modules/home/home_module.dart';
import 'package:biblioteca_framework_flutter_github_io/app/modules/splash/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:biblioteca_framework_flutter_github_io/app/modules/splash/splash_page.dart';

class SplashModule extends Module {
  @override
  List<Bind> get binds => [
        Bind((i) => SplashController()),
      ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => SplashPage()),
    ChildRoute('/home', child: (_, args) => HomeModule()),
  ];

  final Widget bootstrap = AppWidget();
}
