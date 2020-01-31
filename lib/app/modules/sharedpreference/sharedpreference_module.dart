import 'package:app_flutter_biblioteca/app/modules/sharedpreference/sharedpreference_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:app_flutter_biblioteca/app/modules/sharedpreference/sharedpreference_page.dart';

class SharedpreferenceModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => SharedpreferenceController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => SharedpreferencePage()),
      ];

  static Inject get to => Inject<SharedpreferenceModule>.of();
}
