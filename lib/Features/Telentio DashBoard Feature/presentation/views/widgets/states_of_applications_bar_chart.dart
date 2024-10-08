import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/bar_chart_bottom_side_label.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/bar_chart_left_side_label.dart';
import 'package:telentio_dashboard/core/utils/app_styles.dart';
import 'package:telentio_dashboard/core/utils/color_palette.dart';

class StatesOfApplicationsBarChart extends StatelessWidget {
  const StatesOfApplicationsBarChart({super.key});

  @override
  Widget build(BuildContext context) {
    return BarChart(barChartData(context));
  }

  BarChartData barChartData(BuildContext context) {
    return BarChartData(
      maxY: 100,
      minY: 20,
      extraLinesData: ExtraLinesData(
        horizontalLines: [
          customHorizontalLine(y: 20),
          customHorizontalLine(y: 40),
          customHorizontalLine(y: 60),
          customHorizontalLine(y: 80),
          customHorizontalLine(y: 100),
        ],
      ),
      borderData: FlBorderData(show: false),
      titlesData: barChartTitles(context),
      gridData: const FlGridData(
        drawVerticalLine: false,
        drawHorizontalLine: false,
      ),
      barTouchData: BarTouchData(
        touchTooltipData: BarTouchTooltipData(
          getTooltipColor: (group) {
            return Colors.black.withOpacity(0.1);
          },
          getTooltipItem: (group, groupIndex, rod, rodIndex) {
            return BarTooltipItem(
              group.barRods.last.toY.toString(),
              AppStyles.styleSemiBold16(context),
            );
          },
        ),
      ),
      barGroups: List.generate(barChartBarRodsData.length, (int index) {
        return BarChartGroupData(x: index, barRods: [
          BarChartRodData(
            toY: barChartBarRodsData[index].first,
            borderRadius: BorderRadius.circular(50),
            rodStackItems: List.generate(
              barChartBarRodsData[index].last.length,
              (internalIndex) {
                return BarChartRodStackItem(
                  barChartBarRodsData[index][1][internalIndex][0],
                  barChartBarRodsData[index][1][internalIndex][1],
                  barChartBarRodsData[index][1][internalIndex][2],
                );
              },
            ),
          ),
        ]);
      }),
    );
  }

  FlTitlesData barChartTitles(BuildContext context) {
    return FlTitlesData(
      rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
      topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
      leftTitles: AxisTitles(
        sideTitles: SideTitles(
          reservedSize: 40,
          showTitles: true,
          interval: 20,
          getTitlesWidget: (value, meta) {
            return BarChartLeftSideLabel(
              value: value,
              intervalValue: 20,
            );
          },
        ),
      ),
      bottomTitles: AxisTitles(
        sideTitles: SideTitles(
          reservedSize: 40,
          showTitles: true,
          getTitlesWidget: (value, meta) {
            return barChartBottomSideWidget(value, context);
          },
        ),
      ),
    );
  }

  Widget barChartBottomSideWidget(double value, BuildContext context) {
    switch (value) {
      case 0:
        return const BarChartBottomSideLabel(label: "Mon");
      case 1:
        return const BarChartBottomSideLabel(label: "Tue");
      case 2:
        return const BarChartBottomSideLabel(label: "Wed");
      case 3:
        return const BarChartBottomSideLabel(label: "Thu");
      case 4:
        return const BarChartBottomSideLabel(label: "Fri");
      case 5:
        return const BarChartBottomSideLabel(label: "Sat");
      case 6:
        return const BarChartBottomSideLabel(label: "Sun");
      default:
        return const BarChartBottomSideLabel(label: "null");
    }
  }

  // List<List<First Number is double and represent toY , second Number is List<fromY , toY , Color >>>
  static const List<List<dynamic>> barChartBarRodsData = [
    [
      95,
      [
        [20, 55, ColorPalette.orange],
        [55, 75, ColorPalette.yellow],
        [75, 95, ColorPalette.purple]
      ]
    ],
    [
      78,
      [
        [20, 39, ColorPalette.orange],
        [39, 51, ColorPalette.yellow],
        [51, 78, ColorPalette.purple]
      ]
    ],
    [
      95,
      [
        [20, 35, ColorPalette.orange],
        [35, 58, ColorPalette.yellow],
        [58, 95, ColorPalette.purple]
      ]
    ],
    [
      63,
      [
        [20, 39, ColorPalette.orange],
        [39, 59, ColorPalette.yellow],
        [59, 63, ColorPalette.purple]
      ]
    ],
    [
      88,
      [
        [20, 42, ColorPalette.orange],
        [42, 60, ColorPalette.yellow],
        [60, 88, ColorPalette.purple]
      ]
    ],
    [
      83,
      [
        [20, 47, ColorPalette.orange],
        [47, 67, ColorPalette.yellow],
        [67, 83, ColorPalette.purple]
      ]
    ],
    [
      62,
      [
        [20, 39, ColorPalette.orange],
        [39, 52, ColorPalette.yellow],
        [52, 62, ColorPalette.purple]
      ]
    ]
  ];

  HorizontalLine customHorizontalLine({required double y}) {
    return HorizontalLine(
        strokeWidth: 1,
        dashArray: [15, 10],
        y: y,
        color: Colors.black.withOpacity(0.1));
  }
}
