import 'package:biblioteca_framework_flutter_github_io/app/modules/sqflite/sqflite_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:biblioteca_framework_flutter_github_io/app/modules/sqflite/sqflite_page.dart';

class SqfliteModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => SqfliteController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => SqflitePage()),
      ];

  static Inject get to => Inject<SqfliteModule>.of();
}
