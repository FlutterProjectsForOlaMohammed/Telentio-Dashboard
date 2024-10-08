import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:telentio_dashboard/core/utils/app_images.dart';
import 'package:telentio_dashboard/core/utils/color_palette.dart';

class GenderPieChart extends StatelessWidget {
  const GenderPieChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Align(
        alignment: Alignment.topCenter,
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: CircularPercentIndicator(
            percent: 0.5,
            radius: 60,
            center: Container(
              height: 60,
              width: 60,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: const Color(0xff2C2E38).withOpacity(0.8),
              ),
              child: SvgPicture.asset(
                AppImages.imagesMaleOrFemale,
              ),
            ),
            circularStrokeCap: CircularStrokeCap.round,
            progressColor: ColorPalette.purple,
            backgroundColor: ColorPalette.yellow,
            lineWidth: 10,
          ),
        ),
      ),
    );
  }
}
