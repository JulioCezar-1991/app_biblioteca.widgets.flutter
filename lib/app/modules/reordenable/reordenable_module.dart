import 'package:biblioteca_framework_flutter_github_io/app/modules/reordenable/reordenable_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:biblioteca_framework_flutter_github_io/app/modules/reordenable/reordenable_page.dart';

class ReordenableModule extends Module {
  @override
  List<Bind> get binds => [
        Bind((i) => ReordenableController()),
      ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => ReordenablePage()),
  ];
}
