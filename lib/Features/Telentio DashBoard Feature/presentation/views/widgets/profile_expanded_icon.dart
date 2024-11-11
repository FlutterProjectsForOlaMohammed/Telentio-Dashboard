import 'package:flutter/material.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/profile_section.dart';
import 'package:telentio_dashboard/core/utils/app_styles.dart';

class ProfileExpandedIcon extends StatefulWidget {
  const ProfileExpandedIcon({
    super.key,
  });

  @override
  State<ProfileExpandedIcon> createState() => _ProfileExpandedIconState();
}

class _ProfileExpandedIconState extends State<ProfileExpandedIcon> {
  bool isExpanded = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(color: Colors.white.withOpacity(0.2)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Profile",
                  style: AppStyles.styleRegular24(context),
                ),
                ExpandIcon(
                  color: Colors.white,
                  isExpanded: isExpanded,
                  onPressed: (value) {
                    setState(() {
                      isExpanded = !isExpanded;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
        isExpanded ? const ProfileSection() : const SizedBox(),
      ],
    );
  }
}
