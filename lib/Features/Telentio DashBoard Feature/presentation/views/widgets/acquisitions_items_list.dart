import 'package:flutter/material.dart';
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
    return ListView.separated(
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return AcquisitionsItem(
          acquisitionsItemModel: items[index],
        );
      },
      separatorBuilder: (context, index) {
        return const Divider(
          height: 40,
        );
      },
      itemCount: 5,
    );
  }
}
/*
 
Column(
      children: List.generate(5, (index) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AcquisitionsItem(),
            Flexible(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: 20, maxHeight: 46),
                child: SizedBox(
                  child: Center(child: Divider()),
                ),
              ),
            )
          ],
        );
      }),
    )

 ListView.separated(
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return const AcquisitionsItem();
      },
      separatorBuilder: (context, index) {
        return const Divider(
          height: 46,
        );
      },
      itemCount: 5,
    )
 
  */

class AcquisitionsItemModel {
  final Color color;
  final String text;
  final num percentage;

  const AcquisitionsItemModel({
    required this.color,
    required this.text,
    required this.percentage,
  });
}
