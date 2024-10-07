import 'package:flutter/material.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/dashboard_section_header.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/states_of_applications_section.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/statisitics_card_section.dart';

class DashboardSection extends StatelessWidget {
  const DashboardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(32),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            DashboardSectionHeader(),
            SizedBox(
              height: 96,
            ),
            StatisiticsCardSection(),
            SizedBox(
              height: 32,
            ),
            Row(
              children: [
                Expanded(child: StatesOfApplicationsSection()),
              ],
            )
          ],
        ),
      ),
    );
  }
}
