import 'package:flutter/material.dart';

class ResponsiveFont {
  static double responsiveFontSize(BuildContext context,
      {required double baseFont}) {
    double scaleFactor = platformScaleFactor(context);
    double responsiveFont = scaleFactor * baseFont;
    return responsiveFont.clamp(baseFont * 0.8, baseFont * 1.2);
  }

  static double platformScaleFactor(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    if (screenWidth < 680) {
      return screenWidth / 550;
    } else if (screenWidth < 890) {
      return screenWidth / 700;
    } else if (screenWidth < 1250) {
      return screenWidth / 1000;
    } else {
      return screenWidth / 1500;
    }
  }
}
