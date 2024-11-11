import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:telentio_dashboard/core/utils/app_images.dart';
import 'package:telentio_dashboard/core/utils/color_palette.dart';
import 'package:telentio_dashboard/core/utils/responsive_font.dart';

class GenderPieChart extends StatelessWidget {
  const GenderPieChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: FittedBox(
          child: CircularPercentIndicator(
            percent: 0.5,
            radius: ResponsiveFont.responsiveFontSize(context, baseFont: 60),
            center: Container(
              height: ResponsiveFont.responsiveFontSize(context, baseFont: 60),
              width: ResponsiveFont.responsiveFontSize(context, baseFont: 60),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
                color: const Color(0xff2C2E38).withOpacity(0.8),
              ),
              child: SvgPicture.asset(
                AppImages.imagesMaleOrFemale,
              ),
            ),
            circularStrokeCap: CircularStrokeCap.round,
            progressColor: ColorPalette.purple,
            backgroundColor: ColorPalette.yellow,
            lineWidth: ResponsiveFont.responsiveFontSize(context, baseFont: 10),
          ),
        ),
      ),
    );
  }
}
