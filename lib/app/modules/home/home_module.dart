import 'package:app_flutter_biblioteca/app/modules/acessibility/acessibility_module.dart';
import 'package:app_flutter_biblioteca/app/modules/alertdisplay/alertdisplay_module.dart';
import 'package:app_flutter_biblioteca/app/modules/animated/animated_module.dart';
import 'package:app_flutter_biblioteca/app/modules/audioplay/audioplay_module.dart';
import 'package:app_flutter_biblioteca/app/modules/boxcontroller/boxcontroller_module.dart';
import 'package:app_flutter_biblioteca/app/modules/buttons/button_module.dart';
import 'package:app_flutter_biblioteca/app/modules/cameragallery/cameragallery_module.dart';
import 'package:app_flutter_biblioteca/app/modules/card/card_module.dart';
import 'package:app_flutter_biblioteca/app/modules/charts/charts_module.dart';
import 'package:app_flutter_biblioteca/app/modules/datetime/datetime_module.dart';
import 'package:app_flutter_biblioteca/app/modules/decorations/decorations_module.dart';
import 'package:app_flutter_biblioteca/app/modules/flare/flare_module.dart';
import 'package:app_flutter_biblioteca/app/modules/googlemap/googlemap_module.dart';
import 'package:app_flutter_biblioteca/app/modules/home/home_controller.dart';
import 'package:app_flutter_biblioteca/app/modules/home/home_page.dart';
import 'package:app_flutter_biblioteca/app/modules/inputdata/inputdata_module.dart';
import 'package:app_flutter_biblioteca/app/modules/navigation/navigation_module.dart';
import 'package:app_flutter_biblioteca/app/modules/reordenable/reordenable_module.dart';
import 'package:app_flutter_biblioteca/app/modules/sharedpreference/sharedpreference_module.dart';
import 'package:app_flutter_biblioteca/app/modules/sqflite/sqflite_module.dart';
import 'package:app_flutter_biblioteca/app/modules/table/table_module.dart';
import 'package:app_flutter_biblioteca/app/modules/text/text_module.dart';
import 'package:app_flutter_biblioteca/app/modules/validator/validator_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeController()),
      ];

  @override
  List<Router> get routers => [
        Router('/home', child: (_, args) => HomePage()),
        Router('/acessibility', module: AcessibilityModule()),
        Router('/alertdisplay', module: AlertDisplayModule()),
        Router('/animated', module: AnimatedModule()),
        Router('/audioplay', module: AudioPlayModule()),
        Router('/boxcontroller', module: BoxcontrollerModule()),
        Router('/buttons', module: ButtonModule()),
        Router('/cameragallery', module: CameragalleryModule()),
        Router('/card', module: CardModule()),
        Router('/charts', module: ChartsModule()),
        Router('/datetime', module: DatetimeModule()),
        Router('/decorations', module: DecorationsModule()),
        Router('/validator', module: ValidatorModule()),
        Router('/flare', module: FlareModule()),
        Router('/googlemap', module: GooglemapModule()),
        Router('/inputdata', module: InputdataModule()),
        Router('/navigation', module: NavigationModule()),
        Router('/reorderable', module: ReordenableModule()),
        Router('/sharedpreference', module: SharedpreferenceModule()),
        Router('/sqflite', module: SqfliteModule()),
        Router('/table', module: TableModule()),
        Router('/text', module: TextModule()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
