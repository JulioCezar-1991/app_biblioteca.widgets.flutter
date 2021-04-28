import 'package:biblioteca_framework_flutter_github_io/app/modules/decorations/decorations_controller.dart';
import 'package:biblioteca_framework_flutter_github_io/app/modules/decorations/page/back_drop_filter.dart';
import 'package:biblioteca_framework_flutter_github_io/app/modules/decorations/page/clip_path.dart';
import 'package:biblioteca_framework_flutter_github_io/app/modules/decorations/page/gradient.dart';
import 'package:biblioteca_framework_flutter_github_io/app/modules/decorations/page/radius.dart';
import 'package:biblioteca_framework_flutter_github_io/app/modules/decorations/page/shadow.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:biblioteca_framework_flutter_github_io/app/modules/decorations/decorations_page.dart';

class DecorationsModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => DecorationsController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => DecorationsPage()),
        Router('/backdrop', child: (_, args) => BackdropFilterExample()),
        Router('/clippath', child: (_, args) => ClipPathExample()),
        Router('/gradient', child: (_, args) => GradientExample()),
        Router('/radius', child: (_, args) => RadiusExample()),
        Router('/shadow', child: (_, args) => ShadowExample()),
      ];

  static Inject get to => Inject<DecorationsModule>.of();
}
