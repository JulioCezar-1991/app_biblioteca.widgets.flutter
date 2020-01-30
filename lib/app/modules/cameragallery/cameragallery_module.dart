import 'package:app_flutter_biblioteca/app/modules/cameragallery/cameragallery_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:app_flutter_biblioteca/app/modules/cameragallery/cameragallery_page.dart';

class CameragalleryModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CameragalleryController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => CameragalleryPage()),
      ];

  static Inject get to => Inject<CameragalleryModule>.of();
}
