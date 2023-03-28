import 'package:flutter/material.dart';

class LightTheme {
  ThemeData theme = ThemeData(
      appBarTheme: const AppBarTheme(),
      scaffoldBackgroundColor: Colors.amber,
      floatingActionButtonTheme: FloatingActionButtonThemeData(backgroundColor: LightColor().weirdRed),
      buttonTheme:
          ButtonThemeData(colorScheme: ColorScheme.light(onPrimary: Colors.green, onSecondary: LightColor().weirdRed)),
      colorScheme: const ColorScheme.light(),
      textTheme: ThemeData.light().textTheme.copyWith(subtitle1: const TextStyle(fontSize: 25, color: Colors.black)));
}

// 10.videoda theme yani temalar!

class LightColor {
  final Color weirdRed = const Color.fromARGB(255, 248, 17, 0);
}
