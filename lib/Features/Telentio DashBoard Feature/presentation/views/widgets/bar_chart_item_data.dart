import 'package:flutter/material.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/data/models/bar_chart_item_data_model.dart';
import 'package:telentio_dashboard/core/utils/app_styles.dart';

class BarChartItemData extends StatelessWidget {
  const BarChartItemData({
    super.key,
    required this.barChatItemDataModel,
  });
  final BarChartItemDataModel barChatItemDataModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          barChatItemDataModel.text,
          style: AppStyles.styleSemiBold14(context),
        ),
        const SizedBox(
          width: 16,
        ),
        CircleAvatar(
          radius: 9,
          backgroundColor: barChatItemDataModel.color,
        )
      ],
    );
  }
}
