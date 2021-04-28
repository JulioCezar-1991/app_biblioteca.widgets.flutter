import 'package:biblioteca_framework_flutter_github_io/app/modules/acessibility/acessibility_module.dart';
import 'package:biblioteca_framework_flutter_github_io/app/modules/alertdisplay/alertdisplay_module.dart';
import 'package:biblioteca_framework_flutter_github_io/app/modules/animated/animated_module.dart';
import 'package:biblioteca_framework_flutter_github_io/app/modules/audioplay/audioplay_module.dart';
import 'package:biblioteca_framework_flutter_github_io/app/modules/boxcontroller/boxcontroller_module.dart';
import 'package:biblioteca_framework_flutter_github_io/app/modules/buttons/button_module.dart';
import 'package:biblioteca_framework_flutter_github_io/app/modules/cameragallery/cameragallery_module.dart';
import 'package:biblioteca_framework_flutter_github_io/app/modules/card/card_module.dart';
import 'package:biblioteca_framework_flutter_github_io/app/modules/charts/charts_module.dart';
import 'package:biblioteca_framework_flutter_github_io/app/modules/datetime/datetime_module.dart';
import 'package:biblioteca_framework_flutter_github_io/app/modules/decorations/decorations_module.dart';
import 'package:biblioteca_framework_flutter_github_io/app/modules/flare/flare_module.dart';
import 'package:biblioteca_framework_flutter_github_io/app/modules/googlemap/googlemap_module.dart';
import 'package:biblioteca_framework_flutter_github_io/app/modules/home/home_controller.dart';
import 'package:biblioteca_framework_flutter_github_io/app/modules/home/home_page.dart';
import 'package:biblioteca_framework_flutter_github_io/app/modules/inputdata/inputdata_module.dart';
import 'package:biblioteca_framework_flutter_github_io/app/modules/navigations/navigation_module.dart';
import 'package:biblioteca_framework_flutter_github_io/app/modules/reordenable/reordenable_module.dart';
import 'package:biblioteca_framework_flutter_github_io/app/modules/sharedpreference/sharedpreference_module.dart';
import 'package:biblioteca_framework_flutter_github_io/app/modules/sqflite/sqflite_module.dart';
import 'package:biblioteca_framework_flutter_github_io/app/modules/table/table_module.dart';
import 'package:biblioteca_framework_flutter_github_io/app/modules/text/text_module.dart';
import 'package:biblioteca_framework_flutter_github_io/app/modules/validator/validator_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeController()),
      ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/home', child: (_, args) => HomePage()),
    ChildRoute('/acessibility', module: AcessibilityModule()),
    ChildRoute('/alertdisplay', module: AlertDisplayModule()),
    ChildRoute('/animated', module: AnimatedModule()),
    ChildRoute('/audioplay', module: AudioPlayModule()),
    ChildRoute('/boxcontroller', module: BoxcontrollerModule()),
    ChildRoute('/buttons', module: ButtonModule()),
    ChildRoute('/cameragallery', module: CameragalleryModule()),
    ChildRoute('/card', module: CardModule()),
    ChildRoute('/charts', module: ChartsModule()),
    ChildRoute('/datetime', module: DatetimeModule()),
    ChildRoute('/decorations', module: DecorationsModule()),
    ChildRoute('/validator', module: ValidatorModule()),
    ChildRoute('/flare', module: FlareModule()),
    ChildRoute('/googlemap', module: GooglemapModule()),
    ChildRoute('/inputdata', module: InputdataModule()),
    ChildRoute('/navigation', module: NavigationModule()),
    ChildRoute('/reorderable', module: ReordenableModule()),
    ChildRoute('/sharedpreference', module: SharedpreferenceModule()),
    ChildRoute('/sqflite', module: SqfliteModule()),
    ChildRoute('/table', module: TableModule()),
    ChildRoute('/text', module: TextModule()),
  ];

  static Inject get to => Inject<HomeModule>.of();
}
