import 'package:flutter/material.dart';

// Deklarasi warna warna yang bakal dipake
// PAKE HEX

class TColors {
  TColors._();

  // Warna Aplikasi

  static const Color appPrimary = Color(0xFF482AF3);
  static const Color appSecondary = Color(0xFFAC2AF3);
  static const Color appAccent = Color(0xFF2A71F3);

  // Warna Gradien

  static const Gradient linearGradient = LinearGradient(
    begin: Alignment(0.0, 0.0),      //begin: Alignment(x, y)  (FORMATNYA GINI)
    end: Alignment(0.707, -0.707),   //end: Alignment(x,y)     (FORMATNYA GINI JUGA)
    colors: [
    Color(0xffff9a9e),
    Color(0xfffad0c4),
    Color(0xfffad0c4),
  ]);
  static const Gradient appBarGradient = LinearGradient(
    begin: Alignment(0.0, 0.0),
    end: Alignment(0.707, -0.707),
    colors: [
      Color(0xffFF6501),
      Color(0xff993D01),
    ]);

  // Warna Teks Aplikasi

  static const Color textPrimary = Color(0xFF333333);
  static const Color textSecondary = Color(0xFF6C7570);
  static const Color textWhite = Colors.white;

  // Warna Background

  static const Color light = Color(0xFFF6F6F6);
  static const Color dark = Color(0xFF272727);
  static const Color primaryBackground = Color(0xFFF3F5FF);

  // Warna Background Container (MUNGKIN PAKE MUNGKIN ENGGA)

  static const Color lightContainer = Color(0xFFF6F6F6);
  static Color darkContainer = TColors.white.withAlpha(25);

  // Warna Button
  // Bisa diganti sesuai design di figma
  // yang penting pake hex

  static const Color buttonPrimary = Color(0xFF4b68ff);
  static const Color butttonSecondary = Color(0xFF6c757D);
  static const Color buttonDisabled = TColors.lightGrey;

  // Warna Border

  static const Color borderPrimary = Color(0xFFD9D9D9);
  static const Color borderSecondary = Color(0xFFE6E6E6);

  // Warna warna Error dan Validation

  static const Color error = Color(0xFFd32f2f);
  static const Color success = Color(0xFF388e3c);
  static const Color warning = Color(0xFFf57c00);
  static const Color info = Color(0xFF1976d2);

  // Neutral Shades

  static const Color black = Color(0xFF232323);
  static const Color darkerGrey = Color(0xFFF4F4F4);
  static const Color darkGrey = Color(0xFF939393);
  static const Color grey = Color(0xFFE0E0E0);
  static const Color softGrey = Color(0xFFF4F4F4);
  static const Color lightGrey = Color(0xFFF9F9F9);
  static const Color white = Color(0xFFFFFFFF);
}
