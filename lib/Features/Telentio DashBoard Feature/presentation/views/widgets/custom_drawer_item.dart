import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:telentio_dashboard/core/utils/app_images.dart';
import 'package:telentio_dashboard/core/utils/app_styles.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 32),
      child: Row(
        children: [
          SvgPicture.asset(
            AppImages.imagesDashboard,
          ),
          const SizedBox(
            width: 24,
          ),
          Text(
            "Dashboard",
            style: AppStyles.styleRegular14(context),
          ),
        ],
      ),
    );
  }
}
