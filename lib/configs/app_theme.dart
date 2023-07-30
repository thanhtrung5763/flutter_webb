import 'package:flutter/material.dart';
import 'package:flutter_webb/configs/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData theme() {
  return ThemeData(
      scaffoldBackgroundColor: AppColors.whiteBackground,
      textTheme: GoogleFonts.mulishTextTheme().apply(),
      progressIndicatorTheme: const ProgressIndicatorThemeData(color: AppColors.blue),
      iconTheme: const IconThemeData(
        color: AppColors.black,
      ),
      appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(
          color: Colors.pinkAccent,
        ),
      ));
}
