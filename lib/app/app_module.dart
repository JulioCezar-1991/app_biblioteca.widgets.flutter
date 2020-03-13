import 'package:app_flutter_biblioteca/app/app_controller.dart';
import 'package:app_flutter_biblioteca/app/modules/splash/splash_module.dart';
import 'package:app_flutter_biblioteca/app/themes/theme_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:app_flutter_biblioteca/app/app_widget.dart';
import 'modules/home/home_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
        Bind((i) => ThemeController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', module: SplashModule()),
        Router('/home', module: HomeModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
