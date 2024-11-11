import 'package:flutter/material.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/data/models/bar_chart_item_data_model.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/bar_chart_item_data.dart';
import 'package:telentio_dashboard/core/utils/color_palette.dart';

class BarChartItemsListData extends StatelessWidget {
  const BarChartItemsListData({super.key});
  static List<BarChartItemDataModel> items = [
    const BarChartItemDataModel(
      text: "Rejected",
      color: ColorPalette.orange,
    ),
    const BarChartItemDataModel(
      text: "Shortlisted",
      color: ColorPalette.yellow,
    ),
    const BarChartItemDataModel(
      text: "Applications",
      color: ColorPalette.purple,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        items.length,
        (index) {
          return Flexible(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                BarChartItemData(
                  barChatItemDataModel: items[index],
                ),
                const SizedBox(
                  width: 16,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
