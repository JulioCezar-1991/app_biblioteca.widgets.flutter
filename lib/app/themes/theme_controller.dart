import 'package:app_flutter_biblioteca/app/themes/dark_theme.dart';
import 'package:app_flutter_biblioteca/app/themes/light_theme.dart';
import 'package:app_flutter_biblioteca/app/themes/setting_theme.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'theme_controller.g.dart';

class ThemeController = _ThemeControllerBase with _$ThemeController;

abstract class _ThemeControllerBase with Store {
  _ThemeControllerBase() {
    load();
  }

  @observable
  var _theme = lightTheme();

  @action
  change(String color) {
    switch (color) {
      case 'light':
        {
          this._theme = lightTheme();
          Settings.theme = 'light';
          break;
        }

      case 'dark':
        {
          this._theme = darkTheme();
          Settings.theme = "dark";
          break;
        }

      default:
        {
          this._theme = lightTheme();
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

  @action
  Future load() async {
    var prefs = await SharedPreferences.getInstance();
    var theme = prefs.getString('theme');
    Settings.theme = theme.isEmpty ? 'light' : theme;
    change(Settings.theme);
  }

  @action
  ThemeData getTheme() {
    return _theme;
  }
}
