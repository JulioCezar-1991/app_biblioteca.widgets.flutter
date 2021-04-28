import 'package:biblioteca_framework_flutter_github_io/app/modules/acessibility/acessibility_controller.dart';
import 'package:biblioteca_framework_flutter_github_io/app/modules/acessibility/pages/acessibility_tooltip.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:biblioteca_framework_flutter_github_io/app/modules/acessibility/acessibility_page.dart';

class AcessibilityModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AcessibilityController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => AcessibilityPage()),
        Router('/tooltip', child: (_, args) => ToolTipPage()),
      ];

  static Inject get to => Inject<AcessibilityModule>.of();
}
