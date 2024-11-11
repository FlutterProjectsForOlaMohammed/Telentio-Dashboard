import 'package:flutter/material.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/profile_image_widget.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/profile_section_header.dart';
import 'package:telentio_dashboard/core/utils/app_styles.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Column(
        children: [
          const ProfileSectionHeader(),
          const SizedBox(
            height: 50,
          ),
          const ProfileImageWidget(
            radiusOfImage: 76,
          ),
          const SizedBox(
            height: 23,
          ),
          Text(
            "Adam Jhones",
            style: AppStyles.styleRegular24(context),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            "Head of HR",
            style: AppStyles.styleBold14(context),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            "New York, USA",
            style: AppStyles.styleBold14(context),
          ),
        ],
      ),
    );
  }
}
