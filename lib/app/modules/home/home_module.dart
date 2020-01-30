import 'package:app_flutter_biblioteca/app/modules/acessibility/acessibility_module.dart';
import 'package:app_flutter_biblioteca/app/modules/animated/animated_module.dart';
import 'package:app_flutter_biblioteca/app/modules/audio/audio_module.dart';
import 'package:app_flutter_biblioteca/app/modules/buttons/button_module.dart';
import 'package:app_flutter_biblioteca/app/modules/card/card_module.dart';
import 'package:app_flutter_biblioteca/app/modules/home/home_controller.dart';
import 'package:app_flutter_biblioteca/app/modules/home/home_page.dart';
import 'package:app_flutter_biblioteca/app/modules/showdialog/showdialog_module.dart';
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
        Router('/showdialog', module: ShowdialogModule()),
        Router('/animated', module: AnimatedModule()),
        Router('/audioplay', module: AudioModule()),
        Router('/buttons', module: ButtonModule()),
        Router('/card', module: CardModule()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
