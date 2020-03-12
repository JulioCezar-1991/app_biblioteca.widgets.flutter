import 'package:app_flutter_biblioteca/app/themes/dark_theme.dart';
import 'package:app_flutter_biblioteca/app/themes/light_theme.dart';
import 'package:app_flutter_biblioteca/app/themes/setting_theme.dart';
import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'theme_controller.g.dart';

class ThemeController = _ThemeControllerBase with _$ThemeController;

abstract class _ThemeControllerBase with Store {
  _ThemeControllerBase() {
    load();
  }
  var theme = lightTheme();

  @action
  change(String color) {
    switch (color) {
      case 'light':
        {
          this.theme = lightTheme();
          Settings.theme = 'light';
          break;
        }

      case 'dark':
        {
          this.theme = darkTheme();
          Settings.theme = "dark";
          break;
        }

      default:
        {
          this.theme = lightTheme();
          Settings.theme = "light";
          break;
        }
    }
  }

  @action
  save(theme) async {
    var prefs = await SharedPreferences.getInstance();
    await prefs.setString('theme', theme);
  }

  Future load() async {
    var prefs = await SharedPreferences.getInstance();
    var theme = prefs.getString('theme');
    Settings.theme = theme.isEmpty ? 'light' : theme;
    change(Settings.theme);
  }
}
