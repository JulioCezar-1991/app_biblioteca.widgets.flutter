import 'package:app_flutter_biblioteca/app/modules/datetime/datetime_controller.dart';
import 'package:app_flutter_biblioteca/app/modules/datetime/page/calendar.dart';
import 'package:app_flutter_biblioteca/app/modules/datetime/page/clock.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:app_flutter_biblioteca/app/modules/datetime/datetime_page.dart';

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
