import 'package:flutter/material.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/by_timing_drop_down_button.dart';
import 'package:telentio_dashboard/core/utils/app_styles.dart';

class AcquisitionsSectionHeader extends StatelessWidget {
  const AcquisitionsSectionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Acquisitions",
          style: AppStyles.styleRegular14(context)
              .copyWith(color: Colors.black, fontWeight: FontWeight.w600),
        ),
        const ByTimingDropDownButton(),
      ],
    );
  }
}
