import 'package:app_flutter_biblioteca/app/modules/table/pages/data_table.dart';
import 'package:app_flutter_biblioteca/app/modules/table/pages/table.dart';
import 'package:app_flutter_biblioteca/app/modules/table/table_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:app_flutter_biblioteca/app/modules/table/table_page.dart';

class TableModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => TableController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => TablePage()),
        Router('/table', child: (_, args) => TableExample()),
        Router('/datatable', child: (_, args) => DataTableExample())
      ];

  static Inject get to => Inject<TableModule>.of();
}
