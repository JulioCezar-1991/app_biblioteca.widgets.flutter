import 'package:app_flutter_biblioteca/app/modules/audio/audio_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:app_flutter_biblioteca/app/modules/audio/audio_page.dart';

class AudioModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AudioController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => AudioPage()),
      ];

  static Inject get to => Inject<AudioModule>.of();
}
