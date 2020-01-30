import 'package:app_flutter_biblioteca/app/modules/animated/pages/animated_button.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'animated_controller.dart';
import 'animated_page.dart';
import 'pages/animated_cross_fade.dart';
import 'pages/animated_dismissible.dart';
import 'pages/animated_drog_drop.dart';
import 'pages/animated_icons.dart';
import 'pages/animated_rotation.dart';
import 'pages/animated_size.dart';
import 'pages/animated_stagger.dart';
import 'pages/animated_switcher.dart';

class AnimatedModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AnimatedController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => AnimatedPage()),
        Router('/button', child: (_, args) => AnimatedButtonExample()),
        Router('/cross', child: (_, args) => AnimatedCrossFadeExample()),
        Router('/dismissible', child: (_, args) => DismissibleExample()),
        Router('/drog', child: (_, args) => DragAndDropAppExample()),
        Router('/icons', child: (_, args) => AnimatedIconsExemple()),
        Router('rotation', child: (_, args) => AnimatedRotationExemple()),
        Router('/size', child: (_, args) => AnimatedSizeExample()),
        Router('/stagger', child: (_, args) => AnimationStaggerExample()),
        Router('/switcher', child: (_, args) => AnimatedSwitcherExample()),
      ];

  static Inject get to => Inject<AnimatedModule>.of();
}
