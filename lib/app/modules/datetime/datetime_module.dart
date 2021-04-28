import 'package:biblioteca_framework_flutter_github_io/app/modules/datetime/datetime_controller.dart';
import 'package:biblioteca_framework_flutter_github_io/app/modules/datetime/page/time.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:biblioteca_framework_flutter_github_io/app/modules/datetime/datetime_page.dart';
import '../charts/page/calendar.dart';

class DatetimeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => DatetimeController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => DatetimePage()),
        Router('/calendar', child: (_, args) => CalendarExample()),
        Router('/clock', child: (_, args) => ClockExample()),
      ];

  static Inject get to => Inject<DatetimeModule>.of();
}
