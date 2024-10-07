import 'package:flutter/material.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/acquisitions_items_list.dart';
import 'package:telentio_dashboard/core/utils/app_styles.dart';

class AcquisitionsItem extends StatelessWidget {
  const AcquisitionsItem({super.key, required this.acquisitionsItemModel});
  final AcquisitionsItemModel acquisitionsItemModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 6,
          backgroundColor: acquisitionsItemModel.color,
        ),
        const SizedBox(
          width: 16,
        ),
        Text(
          acquisitionsItemModel.text,
          style: AppStyles.styleSemiBold14(context),
        ),
        const Spacer(),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 70,
              child: LinearProgressIndicator(
                value: acquisitionsItemModel.percentage / 100,
                borderRadius: BorderRadius.circular(30),
                color: acquisitionsItemModel.color,
                backgroundColor: acquisitionsItemModel.color.withOpacity(
                  (acquisitionsItemModel.text == "On Hold" ? 0.15 : 0.4),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              "${acquisitionsItemModel.percentage}%",
              style: AppStyles.styleSemiBold14(context),
            ),
          ],
        )
      ],
    );
  }
}
