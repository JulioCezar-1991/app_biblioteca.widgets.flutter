import 'package:app_flutter_biblioteca/app/modules/text/pages/text_rotated_box.dart';
import 'package:app_flutter_biblioteca/app/modules/text/pages/text_rich.dart';
import 'package:app_flutter_biblioteca/app/modules/text/pages/text_underline.dart';
import 'package:app_flutter_biblioteca/app/modules/text/text_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:app_flutter_biblioteca/app/modules/text/text_page.dart';

class TextModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => TextController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => TextPage()),
        Router('/rotated', child: (_, args) => TextRotatedBox()),
        Router('/span', child: (_, args) => TextRichExample()),
        Router('/underline', child: (_, args) => TextUnderline()),
      ];

  static Inject get to => Inject<TextModule>.of();
}
