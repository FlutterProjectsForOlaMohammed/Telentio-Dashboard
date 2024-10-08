import 'package:flutter/material.dart';
import 'package:telentio_dashboard/core/utils/app_styles.dart';

class GenderDataItem extends StatelessWidget {
  const GenderDataItem({
    super.key,
    required this.text,
    required this.color,
  });
  final String text;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 40,
          width: 10,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          text,
          style: AppStyles.styleSemiBold14(context),
        ),
      ],
    );
  }
}
