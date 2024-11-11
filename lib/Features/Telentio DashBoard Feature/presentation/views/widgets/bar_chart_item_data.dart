import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
    return Flexible(
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              child: Text(
                barChatItemDataModel.text,
                style: AppStyles.styleSemiBold14(context),
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Flexible(
              child: CircleAvatar(
                radius: 9.r,
                backgroundColor: barChatItemDataModel.color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
