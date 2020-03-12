import 'package:app_flutter_biblioteca/app/modules/firebase/firebase_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

class FirebaseModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => FirebaseController()),
      ];

  @override
  List<Router> get routers => [];

  static Inject get to => Inject<FirebaseModule>.of();
}
