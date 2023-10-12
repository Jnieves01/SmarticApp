
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class AppFonts {
  static TextStyle primaryLetter({Color color = Colors.white, double fontSize = 15, fontWeight= FontWeight.bold}) {
    return GoogleFonts.poppins(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight
    );
  }
}