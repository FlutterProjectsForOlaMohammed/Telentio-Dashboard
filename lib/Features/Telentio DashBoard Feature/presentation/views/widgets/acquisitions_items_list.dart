import 'package:flutter/material.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/data/models/acquisitions_item_model.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/acquisitions_item.dart';
import 'package:telentio_dashboard/core/utils/color_palette.dart';

class AcquisitionsItemsList extends StatelessWidget {
  const AcquisitionsItemsList({super.key});
  static const List<AcquisitionsItemModel> items = [
    AcquisitionsItemModel(
      color: ColorPalette.purple,
      text: 'Applications',
      percentage: 80,
    ),
    AcquisitionsItemModel(
      color: ColorPalette.yellow,
      text: 'Shortlisted',
      percentage: 65,
    ),
    AcquisitionsItemModel(
      color: ColorPalette.orange,
      text: 'Rejected',
      percentage: 40,
    ),
    AcquisitionsItemModel(
      color: Color(0xff6674BB),
      text: 'On Hold',
      percentage: 50,
    ),
    AcquisitionsItemModel(
      color: ColorPalette.green,
      text: 'Finalised',
      percentage: 45,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        items.length,
        (index) {
          return Expanded(
            child: Column(
              children: [
                AcquisitionsItem(
                  acquisitionsItemModel: items[index],
                ),
                (index == items.length - 1)
                    ? const SizedBox()
                    : const Flexible(
                        child: SizedBox(
                          height: 46,
                          child: Center(
                            child: Divider(),
                          ),
                        ),
                      ),
              ],
            ),
          );
        },
      ),
    );
  }
}