import 'package:flutter/material.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/drawer_icon.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/profile_image_widget.dart';
import 'package:telentio_dashboard/core/utils/app_styles.dart';

class MobileLayoutHeader extends StatelessWidget {
  const MobileLayoutHeader({
    super.key,
    required this.scaffoldKey,
  });

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DrawerIcon(
          drawerKey: scaffoldKey,
          onPressed: () {
            scaffoldKey.currentState!.openDrawer();
          },
        ),
        const Spacer(),
        Expanded(
          child: ListTile(
            leading: const ProfileImageWidget(
              radiusOfImage: 20,
            ),
            contentPadding: EdgeInsets.zero,
            title: Text(
              "Adam Jhones",
              style: AppStyles.styleRegular12(context),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Head of HR",
                  style: AppStyles.styleRegular10(context)
                      .copyWith(color: Colors.black.withOpacity(0.65)),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  "New York, USA",
                  style: AppStyles.styleRegular10(context)
                      .copyWith(color: Colors.black.withOpacity(0.65)),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}