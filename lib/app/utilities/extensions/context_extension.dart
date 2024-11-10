import 'package:flutter/material.dart';
import 'package:travel_app/app/app_locator.dart';
import 'package:travel_app/app/init/theme/app_colors_extension.dart';
import 'package:travel_app/app/init/theme/text_styles/app_text_theme.dart';

extension ThemeContextExtension on BuildContext {
  AppTextTheme get textTheme => AppLocator.locator<AppTextTheme>();

  /// MARK: Tema verilerine erişmek için.
  ThemeData get themeData => Theme.of(this);

  AppColorsExtension get colors => themeData.extension<AppColorsExtension>()!;

  /// MARK: Cihaz enine boyutunu ulaşmak için.
  double get screenWidth => MediaQuery.of(this).size.width;

  /// MARK: Cihaz dikey boyutunu ulaşmak için.
  double get screenHeight => MediaQuery.of(this).size.height;

  String get getCurrentLocale => Localizations.localeOf(this).countryCode ?? '';
}
