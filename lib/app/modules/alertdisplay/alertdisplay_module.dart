import 'package:biblioteca_framework_flutter_github_io/app/modules/alertdisplay/alertdisplay_controller.dart';
import 'package:biblioteca_framework_flutter_github_io/app/modules/alertdisplay/alertdisplay_page.dart';

import 'package:flutter_modular/flutter_modular.dart';

class AlertDisplayModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AlertDisplayController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => AlertDisplayPage()),
      ];

  static Inject get to => Inject<AlertDisplayModule>.of();
}
