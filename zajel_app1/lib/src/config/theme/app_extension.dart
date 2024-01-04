import 'package:flutter/material.dart';

class AppColorsExtension extends ThemeExtension<AppColorsExtension> {
  AppColorsExtension(
      {required this.primary,
      required this.secondary,
      required this.tertiary,
      required this.alternative,
      required this.background,
      required this.mainTextcolor,
      required this.subTextcolor});

  final Color primary;
  final Color secondary;
  final Color tertiary;
  final Color alternative;
  final Color background;
  final Color subTextcolor;
  final Color mainTextcolor;

  @override
  ThemeExtension<AppColorsExtension> copyWith(
      {Color? primary,
      Color? secondary,
      Color? tertiary,
      Color? alternative,
      Color? background,
      Color? subTextcolor,
      Color? mainTextcolor}) {
    return AppColorsExtension(
        primary: primary ?? this.primary,
        secondary: secondary ?? this.secondary,
        tertiary: tertiary ?? this.tertiary,
        alternative: alternative ?? this.alternative,
        background: background ?? this.background,
        subTextcolor: subTextcolor ?? this.subTextcolor,
        mainTextcolor: mainTextcolor ?? this.mainTextcolor);
  }

  @override
  ThemeExtension<AppColorsExtension> lerp(
    covariant ThemeExtension<AppColorsExtension>? other,
    double t,
  ) {
    if (other is! AppColorsExtension) {
      return this;
    }

    return AppColorsExtension(
      primary: Color.lerp(primary, other.primary, t)!,
      secondary: Color.lerp(secondary, other.secondary, t)!,
      tertiary: Color.lerp(tertiary, other.tertiary, t)!,
      alternative: Color.lerp(alternative, other.alternative, t)!,
      background: Color.lerp(background, other.background, t)!,
      mainTextcolor: Color.lerp(mainTextcolor, other.mainTextcolor, t)!,
      subTextcolor: Color.lerp(subTextcolor, other.subTextcolor, t)!,
    );
  }
}
