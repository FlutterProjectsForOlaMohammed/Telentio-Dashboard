import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/data/models/drawer_item_model.dart';
import 'package:telentio_dashboard/core/utils/app_styles.dart';

class NotActiveCustomDrawerItem extends StatelessWidget {
  const NotActiveCustomDrawerItem({
    super.key,
    required this.drawerItemModel,
    required this.onPressed,
  });
  final DrawerItemModel drawerItemModel;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 16, top: 16, left: 20),
        child: Row(
          children: [
            SvgPicture.asset(
              drawerItemModel.icon,
            ),
            const SizedBox(
              width: 24,
            ),
            Text(
              drawerItemModel.title,
              style: AppStyles.styleRegular14(context),
            ),
          ],
        ),
      ),
    );
  }
}
