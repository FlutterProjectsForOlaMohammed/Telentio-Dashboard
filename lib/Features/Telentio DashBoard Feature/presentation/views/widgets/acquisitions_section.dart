import 'package:flutter/material.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/acquisitions_items_list.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/acquisitions_section_header.dart';

class AcquisitionsSection extends StatelessWidget {
  const AcquisitionsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 273 / 363,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        margin: const EdgeInsets.only(left: 16),
        child: const Padding(
          padding: EdgeInsets.fromLTRB(32, 16, 27, 16),
          child: Column(
            children: [
              AcquisitionsSectionHeader(),
              SizedBox(
                height: 20,
              ),
              Expanded(child: AcquisitionsItemsList()),
            ],
          ),
        ),
      ),
    );
  }
}
