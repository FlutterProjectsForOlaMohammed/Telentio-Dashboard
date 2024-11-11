import 'package:flutter/material.dart';
import 'package:telentio_dashboard/core/utils/responsive_font.dart';

class AppStyles {
  static TextStyle styleRegular8(BuildContext context) {
    return TextStyle(
      fontSize: ResponsiveFont.responsiveFontSize(context, baseFont: 8),
      fontFamily: "Cabin",
      fontWeight: FontWeight.w400,
      color: const Color(0xff000000).withOpacity(0.4),
    );
  }

  static TextStyle styleRegular10(BuildContext context) {
    return TextStyle(
      fontSize: ResponsiveFont.responsiveFontSize(context, baseFont: 10),
      fontFamily: "Cabin",
      fontWeight: FontWeight.w400,
      color: const Color(0xff000000),
    );
  }

  static TextStyle styleRegular14(BuildContext context) {
    return TextStyle(
      fontSize: ResponsiveFont.responsiveFontSize(context, baseFont: 14),
      fontFamily: "Cabin",
      fontWeight: FontWeight.w400,
      color: const Color(0xffFFFFFF),
    );
  }

  static TextStyle styleRegular12(BuildContext context) {
    return TextStyle(
      fontSize: ResponsiveFont.responsiveFontSize(context, baseFont: 12),
      fontFamily: "Cabin",
      fontWeight: FontWeight.w400,
      color: const Color(0xff000000),
    );
  }

  static TextStyle styleSemiBold14(BuildContext context) {
    return TextStyle(
      fontSize: ResponsiveFont.responsiveFontSize(context, baseFont: 14),
      fontFamily: "Cabin",
      fontWeight: FontWeight.w600,
      color: const Color(0xff000000),
    );
  }

  static TextStyle styleSemiBold10(BuildContext context) {
    return TextStyle(
      fontSize: ResponsiveFont.responsiveFontSize(context, baseFont: 10),
      fontFamily: "Cabin",
      fontWeight: FontWeight.w600,
      color: const Color(0xff6C6CD9),
    );
  }

  static TextStyle styleSemiBold12(BuildContext context) {
    return TextStyle(
      fontSize: ResponsiveFont.responsiveFontSize(context, baseFont: 12),
      fontFamily: "Cabin",
      fontWeight: FontWeight.w600,
      color: const Color(0xff000000),
    );
  }

  static TextStyle styleBold24(BuildContext context) {
    return TextStyle(
      fontSize: ResponsiveFont.responsiveFontSize(context, baseFont: 24),
      fontFamily: "Cabin",
      fontWeight: FontWeight.w700,
      color: const Color(0xff000000),
    );
  }

  static TextStyle styleRegular24(BuildContext context) {
    return TextStyle(
      fontSize: ResponsiveFont.responsiveFontSize(context, baseFont: 24),
      fontFamily: "Cabin",
      fontWeight: FontWeight.w400,
      color: const Color(0xffFFFFFF),
    );
  }

  static TextStyle styleBold14(BuildContext context) {
    return TextStyle(
      fontSize: ResponsiveFont.responsiveFontSize(context, baseFont: 14),
      fontFamily: "Cabin",
      fontWeight: FontWeight.w700,
      color: const Color(0xffFFFFFF),
    );
  }

  static TextStyle styleSemiBold16(BuildContext context) {
    return TextStyle(
      fontSize: ResponsiveFont.responsiveFontSize(context, baseFont: 16),
      fontFamily: "Cabin",
      fontWeight: FontWeight.w600,
      color: const Color(0xff6674BB),
    );
  }

  static TextStyle styleRegular28(BuildContext context) {
    return TextStyle(
      fontSize: ResponsiveFont.responsiveFontSize(context, baseFont: 28),
      fontFamily: "Baloo",
      fontWeight: FontWeight.w400,
      color: const Color(0xffFFFFFF),
    );
  }
}
