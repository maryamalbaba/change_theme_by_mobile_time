import 'package:flutter/material.dart';

class modeTheme {
  static final lightmode = ThemeData(
    //useMaterial3: true,
    colorScheme:
        ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 158, 205, 160)),
    // brightness: Brightness.light
  );
  static final darkmode = ThemeData(
    colorScheme: ColorScheme.fromSeed(
        seedColor: const Color.fromARGB(255, 226, 197, 153)),
    // brightness: Brightness.dark
  );
}
