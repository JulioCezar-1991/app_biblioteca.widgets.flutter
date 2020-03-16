import 'package:app_flutter_biblioteca/app/modules/buttons/button_controller.dart';
import 'package:app_flutter_biblioteca/app/modules/buttons/button_page.dart';
import 'package:app_flutter_biblioteca/app/modules/buttons/pages/button_badges.dart';
import 'package:app_flutter_biblioteca/app/modules/buttons/pages/floating_action_button.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ButtonModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => ButtonController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => ButtonPage()),
        Router('/floatingbutton',
            child: (_, args) => FloatingActionButtonPage()),
        Router('/badges', child: (_, args) => BadgesPage()),
      ];

  static Inject get to => Inject<ButtonModule>.of();
}
