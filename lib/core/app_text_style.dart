import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static TextStyle janna({
    double size = 16,
    FontWeight weight = FontWeight.normal,
    Color color = Colors.white,
  }) {
    return GoogleFonts.getFont(
      'Janna LT',
      fontSize: size,
      fontWeight: weight,
      color: color,
    );
  }
}
