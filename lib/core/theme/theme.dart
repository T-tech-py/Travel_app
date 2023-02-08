import 'package:flutter/material.dart';
import 'package:travel_app/core/constans/colors.dart';

customTheme() {
  return ThemeData().copyWith(
    primaryColor: white,
  );
}

extension CustomThemeContext on BuildContext {
  ThemeData get themeData => ThemeData(
        brightness: Brightness.light,
        // primaryColor: primaryColor,
        colorScheme: ColorScheme.light(primary: white),
        //primaryColorLight: primaryColor,
        fontFamily: 'Poppins',
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: darkBackgroundColor,
        textTheme: const TextTheme().copyWith(),
      );
}
