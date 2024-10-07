import 'package:flutter/material.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/data/models/statisitics_card_model.dart';
import 'package:telentio_dashboard/core/utils/app_styles.dart';

class StatisiticsCardHeader extends StatelessWidget {
  const StatisiticsCardHeader({super.key, required this.statisiticsCardModel});
  final StatisiticsCardModel statisiticsCardModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          statisiticsCardModel.title,
          style: AppStyles.styleRegular12(context).copyWith(
            color: const Color(0xff54548C),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.more_horiz_rounded,
            size: 24,
            color: Colors.black.withOpacity(0.3),
          ),
        ),
      ],
    );
  }
}
