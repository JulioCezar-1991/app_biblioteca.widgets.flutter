import 'package:app_flutter_biblioteca/app/modules/showdialog/showdialog_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:app_flutter_biblioteca/app/modules/showdialog/showdialog_page.dart';

class ShowdialogModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => ShowdialogController()),
      ];

  @override
  List<Router> get routers => [
        Router('/showdialog', child: (_, args) => ShowdialogPage()),
      ];

  static Inject get to => Inject<ShowdialogModule>.of();
}
