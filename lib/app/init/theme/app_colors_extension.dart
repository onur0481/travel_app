import 'package:flutter/material.dart';

class AppColorsExtension extends ThemeExtension<AppColorsExtension> {
  final Color primary;
  final Color primaryLight01;
  final Color primaryLight02;
  final Color primaryDark;
  final Color secondary;
  final Color secondaryLight01;
  final Color secondaryLight02;
  final Color secondaryDark;
  final Color tertiary;
  final Color tertiaryLight01;
  final Color tertiaryDark;
  final Color black;
  final Color white;

  const AppColorsExtension({
    required this.primary,
    required this.primaryLight01,
    required this.primaryLight02,
    required this.primaryDark,
    required this.secondary,
    required this.secondaryLight01,
    required this.secondaryLight02,
    required this.secondaryDark,
    required this.tertiary,
    required this.tertiaryLight01,
    required this.tertiaryDark,
    required this.black,
    required this.white,
  });

  @override
  ThemeExtension<AppColorsExtension> copyWith({
    Color? primary,
    Color? primaryLight01,
    Color? primaryLight02,
    Color? primaryDark,
    Color? secondary,
    Color? secondaryLight01,
    Color? secondaryLight02,
    Color? secondaryDark,
    Color? tertiary,
    Color? tertiaryLight01,
    Color? tertiaryDark,
    Color? black,
    Color? white,
  }) {
    return AppColorsExtension(
      primary: primary ?? this.primary,
      primaryLight01: primaryLight01 ?? this.primaryLight01,
      primaryLight02: primaryLight02 ?? this.primaryLight02,
      primaryDark: primaryDark ?? this.primaryDark,
      secondary: secondary ?? this.secondary,
      secondaryLight01: secondaryLight01 ?? this.secondaryLight01,
      secondaryLight02: secondaryLight02 ?? this.secondaryLight02,
      secondaryDark: secondaryDark ?? this.secondaryDark,
      tertiary: tertiary ?? this.tertiary,
      tertiaryLight01: tertiaryLight01 ?? this.tertiaryLight01,
      tertiaryDark: tertiaryDark ?? this.tertiaryDark,
      black: black ?? this.black,
      white: white ?? this.white,
    );
  }

  @override
  ThemeExtension<AppColorsExtension> lerp(ThemeExtension<AppColorsExtension>? other, double t) {
    if (other is! AppColorsExtension) return this;
    return AppColorsExtension(
      primary: Color.lerp(primary, other.primary, t)!,
      primaryLight01: Color.lerp(primaryLight01, other.primaryLight01, t)!,
      primaryLight02: Color.lerp(primaryLight02, other.primaryLight02, t)!,
      primaryDark: Color.lerp(primaryDark, other.primaryDark, t)!,
      secondary: Color.lerp(secondary, other.secondary, t)!,
      secondaryLight01: Color.lerp(secondaryLight01, other.secondaryLight01, t)!,
      secondaryLight02: Color.lerp(secondaryLight02, other.secondaryLight02, t)!,
      secondaryDark: Color.lerp(secondaryDark, other.secondaryDark, t)!,
      tertiary: Color.lerp(tertiary, other.tertiary, t)!,
      tertiaryLight01: Color.lerp(tertiaryLight01, other.tertiaryLight01, t)!,
      tertiaryDark: Color.lerp(tertiaryDark, other.tertiaryDark, t)!,
      black: Color.lerp(black, other.black, t)!,
      white: Color.lerp(white, other.white, t)!,
    );
  }
}
