import 'package:app_flutter_biblioteca/app/modules/charts/charts_controller.dart';
import 'package:app_flutter_biblioteca/app/modules/charts/page/calendar.dart';
import 'package:app_flutter_biblioteca/app/modules/charts/page/parts_line.dart';
import 'package:app_flutter_biblioteca/app/modules/charts/page/parts_pie.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:app_flutter_biblioteca/app/modules/charts/charts_page.dart';

class ChartsModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => ChartsController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => ChartsPage()),
        Router('/partsline', child: (_, args) => PartsLineExample()),
        Router('/partspie', child: (_, args) => PartsPieExample()),
        Router('/calendarcopy', child: (_, args) => CalendarExample()),
      ];

  static Inject get to => Inject<ChartsModule>.of();
}
