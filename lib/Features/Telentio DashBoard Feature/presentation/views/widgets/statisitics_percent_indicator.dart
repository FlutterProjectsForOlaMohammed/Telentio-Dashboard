import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:telentio_dashboard/core/utils/app_styles.dart';
import 'package:telentio_dashboard/core/utils/color_palette.dart';

class StatisiticsPercentIndicator extends StatelessWidget {
  const StatisiticsPercentIndicator({
    super.key,
    required this.color,
    required this.text,
    required this.percentage,
  });
  final Color color;
  final String text;
  final num percentage;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 32),
      child: CircularPercentIndicator(
        radius: 32,
        center: FittedBox(
          child: Text(
            "+$text%",
            style: AppStyles.styleSemiBold14(context),
          ),
        ),
        backgroundColor: ColorPalette.purple.withOpacity(0.1),
        progressColor: color,
        circularStrokeCap: CircularStrokeCap.round,
        percent: percentage / 100,
      ),
    );
  }
}
