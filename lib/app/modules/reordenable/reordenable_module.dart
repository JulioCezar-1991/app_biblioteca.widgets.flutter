import 'package:app_flutter_biblioteca/app/modules/reordenable/reordenable_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:app_flutter_biblioteca/app/modules/reordenable/reordenable_page.dart';

class ReordenableModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => ReordenableController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => ReordenablePage()),
      ];

  static Inject get to => Inject<ReordenableModule>.of();
}
