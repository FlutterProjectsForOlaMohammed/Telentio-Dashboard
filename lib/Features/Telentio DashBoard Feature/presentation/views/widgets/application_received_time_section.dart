import 'package:flutter/material.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/customized_line_chart.dart';
import 'package:telentio_dashboard/core/utils/app_styles.dart';

class ApplicationReceivedTimeSection extends StatelessWidget {
  const ApplicationReceivedTimeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(minHeight: 300),
      child: AspectRatio(
        aspectRatio: 564 / 212,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.fromLTRB(32, 24, 32, 32),
          child: Container(
            color: const Color(0xff6674BB).withOpacity(0.03),
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Application Received Time",
                  style: AppStyles.styleSemiBold14(context),
                ),
                const Expanded(
                  child: CustomizedLineChart(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
