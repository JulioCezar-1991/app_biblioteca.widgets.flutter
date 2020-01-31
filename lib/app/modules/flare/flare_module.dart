import 'package:app_flutter_biblioteca/app/modules/flare/flare_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:app_flutter_biblioteca/app/modules/flare/flare_page.dart';

class FlareModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => FlareController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => FlarePage()),
      ];

  static Inject get to => Inject<FlareModule>.of();
}
