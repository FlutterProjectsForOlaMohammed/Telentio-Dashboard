import 'package:flutter/material.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/data/models/drawer_item_model.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/active_custom_drawer_item.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/not_active_custom_drawer_item.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem({
    super.key,
    required this.isSelected,
    required this.drawerItemModel,
    required this.onPressed,
  });
  final bool isSelected;
  final DrawerItemModel drawerItemModel;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveCustomDrawerItem(
            drawerItemModel: drawerItemModel,
            onPressed: onPressed,
          )
        : NotActiveCustomDrawerItem(
            drawerItemModel: drawerItemModel,
            onPressed: onPressed,
          );
  }
}
