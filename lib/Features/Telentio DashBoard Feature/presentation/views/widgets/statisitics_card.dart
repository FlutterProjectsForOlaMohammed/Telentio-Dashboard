import 'package:flutter/material.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/data/models/statisitics_card_model.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/statisitics_card_body.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/statisitics_card_header.dart';

class StatisiticsCard extends StatelessWidget {
  const StatisiticsCard({super.key, required this.statisiticsCardModel});
  final StatisiticsCardModel statisiticsCardModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      clipBehavior: Clip.antiAlias,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, bottom: 16, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: StatisiticsCardHeader(
                statisiticsCardModel: statisiticsCardModel,
              ),
            ),
            Flexible(
              child: StatisiticsCardBody(
                statisiticsCardModel: statisiticsCardModel,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
