import 'package:flutter/material.dart';

abstract class AppTheme {
  static final lightTheme = ThemeData.from(
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xff173AFE),
      brightness: Brightness.light,
    ),
  );

  static final darkTheme = ThemeData.from(
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xff173AFE),
      brightness: Brightness.dark,
    ),
  );
}
