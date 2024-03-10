import 'package:flutter/material.dart';

class AppFontManager {
  static const String proximaFamily = 'Proxima';
  static const String sfProTextFamily = 'SF-Pro-Text';

  static const TextStyle proximaBold = TextStyle(
    fontFamily: proximaFamily,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle proximaRegular = TextStyle(
    fontFamily: proximaFamily,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle proximaSemibold = TextStyle(
    fontFamily: proximaFamily,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle sfProTextRegular = TextStyle(
    fontFamily: sfProTextFamily,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle sfProTextSemibold = TextStyle(
    fontFamily: sfProTextFamily,
    fontWeight: FontWeight.w600,
  );
}
