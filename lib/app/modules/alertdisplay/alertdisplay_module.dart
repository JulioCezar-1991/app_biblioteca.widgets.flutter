import 'package:app_flutter_biblioteca/app/modules/alertdisplay/alertdisplay_controller.dart';
import 'package:app_flutter_biblioteca/app/modules/alertdisplay/alertdisplay_page.dart';
import 'package:app_flutter_biblioteca/app/modules/alertdisplay/pages/about_dialog.dart';
import 'package:app_flutter_biblioteca/app/modules/alertdisplay/pages/alert_dialog.dart';
import 'package:app_flutter_biblioteca/app/modules/alertdisplay/pages/general_dialog.dart';
import 'package:app_flutter_biblioteca/app/modules/alertdisplay/pages/snack_bar.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AlertDisplayModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AlertDisplayController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => AlertDisplayPage()),
        Router('/about', child: (_, args) => AboutDialogExample()),
        Router('/alert', child: (_, args) => AlertDialogExample()),
        Router('/general', child: (_, args) => GeneralDialogExample()),
        Router('/snackbar', child: (_, args) => SnackBarExample()),
      ];

  static Inject get to => Inject<AlertDisplayModule>.of();
}
