import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/data/models/drawer_item_model.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/custom_vertical_divider.dart';
import 'package:telentio_dashboard/core/utils/app_styles.dart';

class ActiveCustomDrawerItem extends StatelessWidget {
  const ActiveCustomDrawerItem({
    super.key,
    required this.drawerItemModel,
    required this.onPressed,
  });
  final DrawerItemModel drawerItemModel;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 36, 29, 72),
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: ListTile(
          onTap: onPressed,
          contentPadding: EdgeInsets.zero,
          leading: SvgPicture.asset(
            drawerItemModel.icon,
          ),
          title: Padding(
            padding: const EdgeInsets.only(left: 12),
            child: FittedBox(
              fit: BoxFit.scaleDown,
              alignment: Alignment.centerLeft,
              child: Text(
                drawerItemModel.title,
                style: AppStyles.styleSemiBold16(context).copyWith(
                    color: const Color.fromARGB(255, 226, 227, 232), height: 2),
              ),
            ),
          ),
          trailing: const CustomVerticalDivider(),
        ),
      ),
    );
  }
}
