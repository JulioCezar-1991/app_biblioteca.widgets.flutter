import 'package:app_flutter_biblioteca/app/modules/validator/validator_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:app_flutter_biblioteca/app/modules/validator/validator_page.dart';

class ValidatorModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => ValidatorController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => ValidatorPage()),
      ];

  static Inject get to => Inject<ValidatorModule>.of();
}
