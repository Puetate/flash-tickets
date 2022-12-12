import 'package:flutter/material.dart';

class Styles {
  static Color primaryColor = const Color.fromARGB(255, 4, 37, 102);
  static Color onPrimary = const Color.fromARGB(255, 13, 30, 39);
  static Color containerNavButton = const Color.fromARGB(130, 148, 185, 255);
  static Color secondary = const Color.fromARGB(255, 232, 234, 246);
  static Color cardColor = const Color.fromARGB(255, 255, 255, 255);
  static Color orange = const Color.fromARGB(255, 255, 144, 65);
  static Color textButtonColor = const Color.fromARGB(255, 161, 182, 255);
  static TextStyle textStyleTitle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w600,
    color: primaryColor,
  );
  static TextStyle textStyleSubTitle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: cardColor,
  );
}
