import 'package:flutter/material.dart';
import 'package:travel_app/app/init/theme/app_colors_extension.dart';
import 'package:travel_app/app/init/theme/light/light_color_palette.dart';
import 'package:travel_app/app/utilities/constant/app_constants.dart';

class LightTheme {
  static const AppColorsExtension colors = AppColorsExtension(
    primary: LightColorPalette.primary,
    primaryLight01: LightColorPalette.primaryLight01,
    primaryLight02: LightColorPalette.primaryLight02,
    primaryDark: LightColorPalette.primaryDark,
    secondary: LightColorPalette.secondary,
    secondaryLight01: LightColorPalette.secondaryLight01,
    secondaryLight02: LightColorPalette.secondaryLight02,
    secondaryDark: LightColorPalette.secondaryDark,
    tertiary: LightColorPalette.tertiary,
    tertiaryLight01: LightColorPalette.tertiaryLight01,
    tertiaryDark: LightColorPalette.tertiaryDark,
    black: LightColorPalette.black,
    white: LightColorPalette.white,
  );
  static ThemeData get lightAppTheme {
    return ThemeData(fontFamily: AppConstants.fontName, extensions: const <ThemeExtension<AppColorsExtension>>[colors]);
  }
}
