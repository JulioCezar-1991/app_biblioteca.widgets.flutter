import 'package:app_flutter_biblioteca/app/modules/boxcontroller/boxcontroller_controller.dart';
import 'package:app_flutter_biblioteca/app/modules/boxcontroller/pages/flow.dart';
import 'package:app_flutter_biblioteca/app/modules/boxcontroller/pages/limitedbox.dart';
import 'package:app_flutter_biblioteca/app/modules/boxcontroller/pages/wrap.dart';
import 'package:app_flutter_biblioteca/app/modules/boxcontroller/pages/placeholder.dart';
import 'package:app_flutter_biblioteca/app/modules/boxcontroller/pages/expanded.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:app_flutter_biblioteca/app/modules/boxcontroller/boxcontroller_page.dart';

class BoxcontrollerModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => BoxcontrollerController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => BoxcontrollerPage()),
        Router('/flow', child: (_, args) => FlowExample()),
        Router('/limitedbox', child: (_, args) => LimitedBoxExample()),
        Router('/wrap', child: (_, args) => WrapExample()),
        Router('/placeholder', child: (_, args) => PlaceholderExample()),
        Router('/expanded', child: (_, args) => ExpandedExample()),
      ];

  static Inject get to => Inject<BoxcontrollerModule>.of();
}
