import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:telentio_dashboard/core/utils/app_images.dart';

class ProfileSectionHeader extends StatelessWidget {
  const ProfileSectionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SvgPicture.asset(
          AppImages.imagesHelpIcon,
        ),
        const SizedBox(
          width: 24,
        ),
        SvgPicture.asset(
          AppImages.imagesSettingsIcon,
        ),
      ],
    );
  }
}
