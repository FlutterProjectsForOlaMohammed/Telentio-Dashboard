import 'package:flutter/material.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/data/models/statisitics_card_model.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/statisitics_card_body.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/statisitics_card_header.dart';

class StatisiticsCard extends StatelessWidget {
  const StatisiticsCard({super.key, required this.statisiticsCardModel});
  final StatisiticsCardModel statisiticsCardModel;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 266 / 126,
      child: Card(
        elevation: 0,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(left: 16, bottom: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              StatisiticsCardHeader(
                statisiticsCardModel: statisiticsCardModel,
              ),
              Expanded(
                child: StatisiticsCardBody(
                  statisiticsCardModel: statisiticsCardModel,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
