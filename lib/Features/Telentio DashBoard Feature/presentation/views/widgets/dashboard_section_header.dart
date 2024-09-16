import 'package:flutter/material.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/search_button.dart';
import 'package:telentio_dashboard/core/utils/app_styles.dart';

class DashboardSectionHeader extends StatelessWidget {
  const DashboardSectionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 5,
            child: Text(
              "Dashboard",
              style: AppStyles.styleBold24(context),
            ),
          ),
          const Expanded(
            flex: 2,
            child: SearchButton(),
          ),
        ],
      ),
    );
  }
}
