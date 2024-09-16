import 'package:flutter/material.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/custom_drawer_items_list.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/custom_drawer_title.dart';
import 'package:telentio_dashboard/core/utils/app_images.dart';
import 'package:telentio_dashboard/core/utils/color_palette.dart';
import 'package:telentio_dashboard/core/widgets/custom_button.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      shape: RoundedRectangleBorder(),
      backgroundColor: ColorPalette.purple,
      child: CustomScrollView(
        slivers: [
          CustomDrawerTitle(),
          CustomDrawerItemsList(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: SizedBox(
                    height: 16,
                  ),
                ),
                CircleAvatar(
                  radius: 77,
                  backgroundImage:
                      AssetImage(AppImages.imagesUpgradeillustration),
                ),
                SizedBox(
                  height: 24,
                ),
                CustomButton(
                  text: "Upgrade Now",
                ),
                SizedBox(
                  height: 32,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
