import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mythemedata {
  static const Color primary= Color(0XFFB7935F);
  static ThemeData lightMode = ThemeData(
    navigationBarTheme: NavigationBarThemeData(
      indicatorColor: Colors.black,
      backgroundColor: primary,),
    textTheme: TextTheme(

      bodySmall: GoogleFonts.elMessiri(
        fontSize: 10,
        fontWeight: FontWeight.w100,
        color: Colors.black,
      ),
      bodyMedium: GoogleFonts.elMessiri(
        fontSize: 20,
        fontWeight: FontWeight.w700,
        color: Colors.black,
      ),
      bodyLarge: GoogleFonts.elMessiri(
        fontSize: 40,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),
  );
  static ThemeData darktMode = ThemeData(
    textTheme: TextTheme(
      bodySmall: GoogleFonts.elMessiri(
        fontSize: 10,
        fontWeight: FontWeight.w100,
        color: Colors.black,
      ),
      bodyMedium: GoogleFonts.elMessiri(
        fontSize: 20,
        fontWeight: FontWeight.w700,
        color: Colors.black,
      ),
      bodyLarge: GoogleFonts.elMessiri(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),
  );


}