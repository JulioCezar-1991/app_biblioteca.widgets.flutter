import 'package:flutter/material.dart';

const brightness = Brightness.light;
const primaryColor = const Color(0xFF0000CD);
const lightColor = const Color(0xFFFFFFFF);

ThemeData lightTheme() {
  return ThemeData(
    brightness: brightness,
    primaryColor: primaryColor,
    accentColor: Colors.white,
    buttonColor: Colors.white70
  );
}
