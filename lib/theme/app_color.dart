import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  Map<int, Color> colorCode = {};
  //brown
  static const Color primaryColor = Color(0xF3802FF8);
  static const Color surfaceColor = Color.fromARGB(29, 209, 181, 250);
  static const Color primaryOrangeColor = Color.fromARGB(255, 247, 144, 49);

  static const Color primaryBrownLightColor = Color(0xFF594449);
  static const Color textInputLoginOrRegisterColor = Color(0xFFF5F2ED);
  static const Color containerButton = Color(0xBE927EF9);
  static const Color colorButton = Color(0xFF927ef9);
  static const Color black = Color(0xFF0b0b0d);
  static const Color primaryPinkColor = Color.fromARGB(255, 251, 118, 171);
  static const Color secondaryLightColor = Color(0xFFE7BBCF);
  static const Color secondaryMediumColor = Color(0xFFECDEEA);
  static const Color baseColors = Color.fromARGB(32, 113, 112, 121);
  static const Color redAlertColors = Color.fromARGB(255, 138, 37, 30);
  static const Color warning = Color.fromARGB(255, 227, 154, 7);
  static const Color nutriColor = Color.fromARGB(116, 247, 145, 49);

  // BoxShadow
  static const BoxShadow boxshadow = BoxShadow(
    color: Color.fromRGBO(0, 0, 0, 0.032),
    blurRadius: 10,
    spreadRadius: 2,
    offset: Offset(2, 2),
  );
// gradient
  static const LinearGradient gradient = LinearGradient(
    colors: [
      AppColors.primaryColor,
      AppColors.primaryOrangeColor,
      AppColors.primaryPinkColor
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: [0, 1, 0.5],
  );
  static const LinearGradient gradient1 = LinearGradient(
    colors: [
      AppColors.primaryColor,
      AppColors.primaryOrangeColor,
      AppColors.primaryPinkColor
    ],
    stops: [0, 1, 0.5],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  static BoxDecoration shadowsApp = BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    color: const Color(0xffF5F5F5),
    boxShadow: const [
      BoxShadow(
        color: Color.fromRGBO(0, 0, 0, 0.1),
        blurRadius: 4,
        spreadRadius: 1,
        offset: Offset(4, 4),
      ),
    ],
  );
  static MaterialColor createMaterialColor(Color color) {
    List strengths = <double>[.05];
    Map<int, Color> swatch = <int, Color>{};
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    for (var strength in strengths) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    }
    return MaterialColor(color.value, swatch);
  }

  static hexToColor(String hexString) {
    var hexColor = hexString.replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    if (hexColor.length == 8) {
      return Color(int.parse("0x$hexColor"));
    }
  }
}
