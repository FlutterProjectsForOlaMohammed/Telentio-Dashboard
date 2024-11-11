import 'package:flutter/material.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/gender_data_item.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/gender_pie_chart.dart';
import 'package:telentio_dashboard/core/utils/app_styles.dart';
import 'package:telentio_dashboard/core/utils/color_palette.dart';

class RatioByGenderSection extends StatelessWidget {
  const RatioByGenderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 280 / 212,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        margin: const EdgeInsets.only(left: 16),
        padding: const EdgeInsets.fromLTRB(32, 24, 32, 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                'Ratio by Gender',
                style: AppStyles.styleSemiBold16(context)
                    .copyWith(color: Colors.black),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const GenderPieChart(),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                GenderDataItem(
                  color: ColorPalette.purple,
                  text: 'Male',
                ),
                Spacer(),
                GenderDataItem(
                  color: ColorPalette.yellow,
                  text: 'Female',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
