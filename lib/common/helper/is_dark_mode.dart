import 'package:flutter/material.dart';

extension DarkMode on BuildContext {
  bool get isDarkMode {
    final brightness = MediaQuery.of(this).platformBrightness;
    return Theme.of(this).brightness == Brightness.dark;
  }
}
