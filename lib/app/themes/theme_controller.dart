import 'package:app_flutter_biblioteca/app/themes/dark_theme.dart';
import 'package:app_flutter_biblioteca/app/themes/light_theme.dart';
import 'package:app_flutter_biblioteca/app/themes/setting_theme.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'theme_controller.g.dart';

class ThemeController = _ThemeControllerBase with _$ThemeController;

abstract class _ThemeControllerBase extends ChangeNotifier with Store {
  @observable
  var theme = lightTheme();

  _ThemeControllerBase() {
    load();
  }

  @action
  change(String color) async {
    var prefs = await SharedPreferences.getInstance();
    switch (color) {
      case 'light':
        {
          theme = lightTheme();
          Settings.theme = "light";
          prefs.setString("theme", Settings.theme);
          notifyListeners();
          break;
        }

      case 'dark':
        {
          theme = darkTheme();
          Settings.theme = "dark";
          prefs.setString("theme", Settings.theme);
          notifyListeners();
          break;
        }

      default:
        {
          this.theme = lightTheme();
          Settings.theme = "light";
          notifyListeners();
          break;
        }
    }
  }

  @action
  Future load() async {
    var prefs = await SharedPreferences.getInstance();
    var theme = prefs.getString('theme');

    Settings.theme = theme.isEmpty ? 'light' : theme;
    change(Settings.theme);
  }
}
