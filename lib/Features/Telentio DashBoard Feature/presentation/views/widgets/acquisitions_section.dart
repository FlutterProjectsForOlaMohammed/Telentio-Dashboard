import 'package:flutter/material.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/Acquisitions_pie_chart.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/acquisitions_items_list.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/acquisitions_section_header.dart';

class AcquisitionsSection extends StatelessWidget {
  const AcquisitionsSection({
    super.key,
    this.addMargin,
  });
  final double? addMargin;
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxHeight: 350),
      child: AspectRatio(
        aspectRatio: 266 / 363,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          margin: EdgeInsets.only(left: addMargin ?? 16),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(32, 16, 27, 16),
            child: Column(
              children: [
                const AcquisitionsSectionHeader(),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: Center(
                    child: (MediaQuery.sizeOf(context).width <1500)
                        ? const AcquisitionsPieChart()
                        : const AcquisitionsItemsList(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
