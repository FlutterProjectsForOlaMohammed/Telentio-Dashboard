import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/data/models/acquisitions_item_model.dart';
import 'package:telentio_dashboard/core/utils/app_styles.dart';
import 'package:telentio_dashboard/core/utils/color_palette.dart';

class AcquisitionsPieChart extends StatefulWidget {
  const AcquisitionsPieChart({super.key});
  static List<AcquisitionsItemModel> items = [
    const AcquisitionsItemModel(
      color: ColorPalette.purple,
      text: 'Applications',
      percentage: 80,
    ),
    const AcquisitionsItemModel(
      color: ColorPalette.yellow,
      text: 'Shortlisted',
      percentage: 65,
    ),
    const AcquisitionsItemModel(
      color: ColorPalette.orange,
      text: 'Rejected',
      percentage: 40,
    ),
    AcquisitionsItemModel(
      color: ColorPalette.blackOpacity40,
      text: 'On Hold',
      percentage: 50,
    ),
    const AcquisitionsItemModel(
      color: ColorPalette.green,
      text: 'Finalised',
      percentage: 45,
    ),
  ];

  @override
  State<AcquisitionsPieChart> createState() => _AcquisitionsPieChartState();
}

class _AcquisitionsPieChartState extends State<AcquisitionsPieChart> {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return PieChart(data(constraints: constraints));
    });
  }

  PieChartData data({required BoxConstraints constraints}) {
    return PieChartData(
      pieTouchData: PieTouchData(
        touchCallback: (p0, p1) {
          setState(() {
            touchedIndex = p1!.touchedSection!.touchedSectionIndex;
          });
        },
      ),
      sectionsSpace: 0,
      sections: List.generate(
        AcquisitionsPieChart.items.length,
        (index) {
          return PieChartSectionData(
            titlePositionPercentageOffset:
                (index == touchedIndex) ? -(constraints.maxWidth * 0.009) : 0.5,
            radius: (index == touchedIndex) ? 30.sp : 27.sp,
            titleStyle: (index == touchedIndex)
                ? AppStyles.styleSemiBold12(context)
                    .copyWith(color: AcquisitionsPieChart.items[index].color)
                : AppStyles.styleSemiBold12(context)
                    .copyWith(color: Colors.white),
            title: (index == touchedIndex)
                ? AcquisitionsPieChart.items[index].text
                : "${AcquisitionsPieChart.items[index].percentage}%",
            color: AcquisitionsPieChart.items[index].color,
            value: AcquisitionsPieChart.items[index].percentage.toDouble(),
          );
        },
      ),
    );
  }
}
