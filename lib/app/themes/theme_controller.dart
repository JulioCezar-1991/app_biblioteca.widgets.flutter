import 'package:app_flutter_biblioteca/app/themes/dark_theme.dart';
import 'package:app_flutter_biblioteca/app/themes/light_theme.dart';
import 'package:app_flutter_biblioteca/app/themes/setting_theme.dart';
import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'theme_controller.g.dart';

class ThemeController = _ThemeControllerBase with _$ThemeController;

abstract class _ThemeControllerBase with Store {
  /* @observable
  var theme = lightTheme();

  change(String color) {
    switch (color) {
      case 'light':
        {
          theme = lightTheme();

          break;
        }

      case 'dark':
        {
          theme = darkTheme();

          break;
        }

      default:
        {
          theme = lightTheme();

          break;
        }
    }
  }

  @action
  save(theme) async {
    var prefs = await SharedPreferences.getInstance();
    await prefs.setString('theme', theme);
  }

  @observable
  Future load() async {
    var prefs = await SharedPreferences.getInstance();
    var theme = prefs.getString('theme');
    Settings.theme = theme.isEmpty ? 'light' : theme;
    change(Settings.theme);
  } */
}
