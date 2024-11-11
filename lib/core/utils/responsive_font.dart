import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResponsiveFont {
  static double responsiveFontSize(BuildContext context,
      {required double baseFont}) {
    return baseFont.sp;
  }
}
