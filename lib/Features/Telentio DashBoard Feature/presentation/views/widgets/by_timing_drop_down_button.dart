import 'package:flutter/material.dart';
import 'package:telentio_dashboard/core/utils/app_styles.dart';
import 'package:telentio_dashboard/core/utils/color_palette.dart';

class ByTimingDropDownButton extends StatefulWidget {
  const ByTimingDropDownButton({
    super.key,
  });
  @override
  State<ByTimingDropDownButton> createState() => _ByTimingDropDownButtonState();
}

class _ByTimingDropDownButtonState extends State<ByTimingDropDownButton> {
  List<DropdownMenuItem> dropdownMenuItemitems = [
    const DropdownMenuItem(
      value: "By Day",
      child: Text(
        "By Day",
      ),
    ),
    const DropdownMenuItem(
      value: "By Week",
      child: Text("By Week"),
    ),
    const DropdownMenuItem(
      value: "By Month",
      child: Text("By Month"),
    ),
    const DropdownMenuItem(
      value: "By Year",
      child: Text("By Year"),
    )
  ];
  String selectedItem = "By Week";
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          icon: const Icon(
            Icons.keyboard_arrow_down_sharp,
            color: ColorPalette.black,
          ),
          selectedItemBuilder: (context) {
            return List.generate(dropdownMenuItemitems.length, (index) {
              return Center(
                child: Text(
                  selectedItem,
                  style: AppStyles.styleRegular12(context)
                      .copyWith(fontWeight: FontWeight.w600),
                ),
              );
            });
          },
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
          borderRadius: BorderRadius.circular(14),
          value: selectedItem,
          items: dropdownMenuItemitems,
          onChanged: (value) {
            setState(() {
              selectedItem = value;
            });
          },
        ),
      ),
    );
  }
}
