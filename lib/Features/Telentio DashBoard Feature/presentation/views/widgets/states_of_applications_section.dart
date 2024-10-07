import 'package:flutter/material.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/bar_chart_items_list_data.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/states_of_applications_bar_chart.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/states_of_applications_header.dart';

class StatesOfApplicationsSection extends StatelessWidget {
  const StatesOfApplicationsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 548 / 366,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(32, 16, 32, 24),
          child: Column(
            children: [
              const StatesOfApplicationsHeader(),
              const SizedBox(
                height: 20,
              ),
              Flexible(
                child: LayoutBuilder(builder: (context, constraints) {
                  return SizedBox(
                    height: constraints.maxWidth * 0.6,
                    width: constraints.maxWidth,
                    child: const StatesOfApplicationsBarChart(),
                  );
                }),
              ),
              const SizedBox(
                height: 20,
              ),
              const BarChartItemsListData(),
            ],
          ),
        ),
      ),
    );
  }
}
