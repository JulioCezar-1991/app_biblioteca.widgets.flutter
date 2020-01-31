import 'package:flutter/material.dart';

const brightness = Brightness.dark;
const primaryColor = const Color(0xFF0000CD);
const lightColor = const Color(0xFFFFFFFF);

ThemeData darkTheme() {
  return ThemeData(
    brightness: brightness,
    primaryColor: primaryColor,
    accentColor: Colors.black26,
    buttonColor: Colors.white24
  );
}
