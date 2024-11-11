import 'package:flutter/material.dart';
import 'package:telentio_dashboard/core/utils/app_styles.dart';

class BarChartBottomSideLabel extends StatelessWidget {
  const BarChartBottomSideLabel({
    super.key,
    required this.label,
  });
  final String label;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Transform.rotate(
        angle: -45 * (3.141592653589793 / 180),
        child: Text(
          label,
          style: AppStyles.styleRegular10(context).copyWith(
              color: const Color(0xff000000).withOpacity(0.4),
              fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
