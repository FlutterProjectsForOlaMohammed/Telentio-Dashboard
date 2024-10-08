import 'package:flutter/material.dart';
import 'package:telentio_dashboard/core/utils/app_styles.dart';

class BarChartLeftSideLabel extends StatelessWidget {
  const BarChartLeftSideLabel({
    super.key,
    required this.value,
    required this.intervalValue,
  });
  final double value;
  final int intervalValue;
  @override
  Widget build(BuildContext context) {
    if (value % intervalValue == 0) {
      return FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.centerLeft,
        child: Text(
          "${value.toInt()}%",
          style: AppStyles.styleRegular10(context).copyWith(
              color: const Color(0xff000000).withOpacity(0.4),
              fontWeight: FontWeight.w700),
        ),
      );
    }
    return Container();
  }
}
