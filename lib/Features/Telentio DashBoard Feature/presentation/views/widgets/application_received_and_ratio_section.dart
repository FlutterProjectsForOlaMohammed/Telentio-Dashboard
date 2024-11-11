import 'package:flutter/material.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/application_received_time_section.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/ratio_by_gender_section.dart';

class ApplicationReceivedAndRatioSection extends StatelessWidget {
  const ApplicationReceivedAndRatioSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 8,
            child: ApplicationReceivedTimeSection(),
          ),
          SizedBox(
            width: 16,
          ),
          Expanded(
            flex: 4,
            child: RatioByGenderSection(),
          )
        ],
      ),
    );
  }
}
