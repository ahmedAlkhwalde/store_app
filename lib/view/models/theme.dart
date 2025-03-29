import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData lightTheme = FlexColorScheme.light(
  colors: const FlexSchemeColor(
    primary: Color(0xFF219ebc),
    primaryContainer: Color(0xFF023047),
    primaryLightRef: Color(0xFF40BAD5),
    secondary: Color.fromARGB(255, 243, 243, 243),
    secondaryContainer: Colors.white,
    tertiary: Color(0xFFfcca46),
    tertiaryContainer: Color(0xff353535),
  ),
  textTheme: GoogleFonts.almaraiTextTheme(), // إضافة خط المراعي
).toTheme;

final ThemeData darkTheme = FlexColorScheme.dark(
  colors: const FlexSchemeColor(
    primary: Color(0xFF219ebc),
    primaryContainer: Color(0xFF023047),
    primaryLightRef: Color(0xFF40BAD5),
    secondary: Color(0xff353535),
    secondaryContainer: Colors.black,
    tertiary: Color(0xFFfcca46),
    tertiaryContainer: Colors.white,
  ),
  textTheme: GoogleFonts.almaraiTextTheme(), // إضافة خط المراعي
).toTheme;
