import 'package:flutter/material.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/acquisitions_section.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/states_of_applications_section.dart';

class ApplicationsAndAcquisitionsSection extends StatelessWidget {
  const ApplicationsAndAcquisitionsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 8,
          child: StatesOfApplicationsSection(),
        ),
        SizedBox(
          width: 16,
        ),
        Expanded(
          flex: 4,
          child: AspectRatio(
            aspectRatio: 273 / 363,
            child: AcquisitionsSection(),
          ),
        )
      ],
    );
  }
}
