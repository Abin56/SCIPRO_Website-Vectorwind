import 'package:flutter/material.dart';

class ColorManager {
  static Color primary = Color.fromARGB(255, 30, 197, 66);
  static Color homePageSecondary = Color.fromARGB(255, 2, 176, 40);
  static Color darkGrey = HexColor.fromHex("#525252");
  static Color grey = HexColor.fromHex("#737477");
  static Color lightGrey = HexColor.fromHex("#9E9E9E");
  static Color primaryOpacity70 = HexColor.fromHex("#B3ED9728");

  //new colors

  static Color darkPrimary = HexColor.fromHex("#d17d11");
  static Color grey1 = HexColor.fromHex("#707070");
  static Color grey2 = HexColor.fromHex("#797979");
  static Color white = HexColor.fromHex("#FFFFFF");
  static Color error = HexColor.fromHex("#e61f34"); //red color
  static Color black = HexColor.fromHex("#000000");
}

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString =
        hexColorString.replaceAll("#", ""); //removing hash from string
    if (hexColorString.length == 6) {
      hexColorString = "FF$hexColorString"; //8 char with opacity 100%
    }
    int? parsedColor = int.tryParse(hexColorString, radix: 16);
    Color color =
        parsedColor != null ? Color(parsedColor) : const Color(0x0000ffff);
    return color;
  }
}
