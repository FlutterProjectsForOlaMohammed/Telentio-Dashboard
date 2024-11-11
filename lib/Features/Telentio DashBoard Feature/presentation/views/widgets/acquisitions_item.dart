import 'package:flutter/material.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/data/models/acquisitions_item_model.dart';
import 'package:telentio_dashboard/core/utils/app_styles.dart';
import 'package:telentio_dashboard/core/utils/responsive_font.dart';

class AcquisitionsItem extends StatelessWidget {
  const AcquisitionsItem({super.key, required this.acquisitionsItemModel});
  final AcquisitionsItemModel acquisitionsItemModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  radius: 6,
                  backgroundColor: acquisitionsItemModel.color,
                ),
                const SizedBox(
                  width: 16,
                ),
                Flexible(
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      acquisitionsItemModel.text,
                      style: AppStyles.styleSemiBold12(context),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        Flexible(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                width: ResponsiveFont.responsiveFontSize(context, baseFont: 70),
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
                width: 23,
              ),
              Flexible(
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    "${acquisitionsItemModel.percentage}%",
                    style: AppStyles.styleSemiBold12(context),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
