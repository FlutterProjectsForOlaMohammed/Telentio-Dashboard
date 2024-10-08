import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/bar_chart_bottom_side_label.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/bar_chart_left_side_label.dart';
import 'package:telentio_dashboard/core/utils/app_styles.dart';
import 'package:telentio_dashboard/core/utils/color_palette.dart';

class CustomizedLineChart extends StatelessWidget {
  const CustomizedLineChart({super.key});

  @override
  Widget build(BuildContext context) {
    return LineChart(
      data(context),
    );
  }

  LineChartData data(BuildContext context) {
    List<String> times = bottomTitlesTimes();

    return LineChartData(
      maxY: 120,
      minY: 25,
      backgroundColor: const Color(0xff6674BB).withOpacity(0.03),
      lineBarsData: [
        LineChartBarData(
          spots: [
            const FlSpot(1, 35),
            const FlSpot(2, 50),
            const FlSpot(3, 45),
            const FlSpot(4, 50),
            const FlSpot(5, 60),
            const FlSpot(6, 50),
            const FlSpot(7, 50),
            const FlSpot(8, 53),
            const FlSpot(9, 46),
          ],
          belowBarData: belowBarAreaDataDecoration(),
          color: Colors.transparent,
          barWidth: 0,
          isCurved: true,
        )
      ],
      lineTouchData: LineTouchData(
        touchTooltipData: LineTouchTooltipData(
          getTooltipColor: (spot) {
            return ColorPalette.black.withOpacity(0.1);
          },
          getTooltipItems: (touchedSpots) {
            return List.generate(touchedSpots.length, (index) {
              return LineTooltipItem(
                touchedSpots[index].y.toString(),
                AppStyles.styleSemiBold16(context),
              );
            });
          },
        ),
      ),
      borderData: FlBorderData(show: false),
      titlesData: lineChartTitles(context, times),
      gridData: const FlGridData(
        drawVerticalLine: false,
        drawHorizontalLine: false,
      ),
    );
  }

  BarAreaData belowBarAreaDataDecoration() {
    return BarAreaData(
      show: true,
      gradient: LinearGradient(
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
        colors: [
          const Color(0xff6674BB).withOpacity(0.3),
          const Color(0xff6674BB).withOpacity(0.25),
          const Color(0xff6674BB).withOpacity(0.01),
        ],
      ),
    );
  }

  FlTitlesData lineChartTitles(BuildContext context, List<String> times) {
    return FlTitlesData(
      rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
      topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
      leftTitles: AxisTitles(
        sideTitles: SideTitles(
          reservedSize: 40,
          showTitles: true,
          interval: 25,
          getTitlesWidget: (value, meta) {
            return BarChartLeftSideLabel(
              intervalValue: 25,
              value: value,
            );
          },
        ),
      ),
      bottomTitles: AxisTitles(
        sideTitles: SideTitles(
          reservedSize: 40,
          showTitles: true,
          getTitlesWidget: (value, meta) {
            return barChartBottomSideWidget(value, context, times);
          },
        ),
      ),
    );
  }

  Widget barChartBottomSideWidget(
      double value, BuildContext context, List<String> times) {
    switch (value) {
      case 1:
        return Padding(
          padding: const EdgeInsets.only(left: 40),
          child: BarChartBottomSideLabel(label: times[0]),
        );
      case 2:
        return BarChartBottomSideLabel(label: times[1]);
      case 3:
        return BarChartBottomSideLabel(label: times[2]);
      case 4:
        return BarChartBottomSideLabel(label: times[3]);
      case 5:
        return BarChartBottomSideLabel(label: times[4]);
      case 6:
        return BarChartBottomSideLabel(label: times[5]);
      case 7:
        return BarChartBottomSideLabel(label: times[6]);
      case 8:
        return BarChartBottomSideLabel(label: times[7]);
      default:
        return const BarChartBottomSideLabel(label: "");
    }
  }

  List<String> bottomTitlesTimes() {
    DateTime now = DateTime.now();
    List<String> times = [];
    int currentHour = now.hour;
    int nextHour = (currentHour + 2) - (currentHour % 2);

    for (int i = 0; i < 8; i++) {
      int hour = nextHour + (i * 2);
      hour = hour % 24;

      String period = (hour == 0)
          ? 'AM'
          : (hour >= 12)
              ? 'PM'
              : 'AM';
      int displayHour = hour % 12;
      displayHour = displayHour == 0 ? 12 : displayHour;

      times.add('${displayHour.toString().padLeft(2, '0')}:00 $period');
    }
    return times;
  }
}
