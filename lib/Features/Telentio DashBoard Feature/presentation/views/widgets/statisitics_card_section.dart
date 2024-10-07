import 'package:flutter/material.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/data/models/statisitics_card_model.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/statisitics_card.dart';
import 'package:telentio_dashboard/core/utils/color_palette.dart';

class StatisiticsCardSection extends StatelessWidget {
  const StatisiticsCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: StatisiticsCard(
            statisiticsCardModel: StatisiticsCardModel(
                incOrDecrValue: 14,
                color: ColorPalette.purple,
                isIncrement: true,
                percentage: 74,
                title: "Total Applications",
                value: "5852"),
          ),
        ),
        const SizedBox(
          width: 32,
        ),
        Expanded(
          child: StatisiticsCard(
            statisiticsCardModel: StatisiticsCardModel(
                incOrDecrValue: 06,
                color: ColorPalette.yellow,
                isIncrement: true,
                percentage: 60,
                title: "Shortlisted Candidates",
                value: "3145"),
          ),
        ),
        const SizedBox(
          width: 32,
        ),
        Expanded(
          child: StatisiticsCard(
            statisiticsCardModel: StatisiticsCardModel(
                incOrDecrValue: 04,
                color: ColorPalette.orange,
                isIncrement: false,
                percentage: 48,
                title: "Rejected Candidates",
                value: "1035"),
          ),
        ),
      ],
    );
  }
}
