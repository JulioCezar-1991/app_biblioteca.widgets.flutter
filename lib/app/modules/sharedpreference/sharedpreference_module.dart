import 'package:biblioteca_framework_flutter_github_io/app/modules/sharedpreference/sharedpreference_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:biblioteca_framework_flutter_github_io/app/modules/sharedpreference/sharedpreference_page.dart';

class SharedpreferenceModule extends Module {
  @override
  List<Bind> get binds => [
        Bind((i) => SharedpreferenceController()),
      ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => SharedpreferencePage()),
  ];
}
