import 'package:flutter/material.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/notifications_section.dart';
import 'package:telentio_dashboard/core/utils/app_styles.dart';

class NotificationsExpandedIcon extends StatefulWidget {
  const NotificationsExpandedIcon({
    super.key,
  });

  @override
  State<NotificationsExpandedIcon> createState() =>
      _NotificationsExpandedIconState();
}

class _NotificationsExpandedIconState extends State<NotificationsExpandedIcon> {
  bool isExpanded = false;
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
                  "Notifications",
                  style: AppStyles.styleRegular24(context),
                ),
                ExpandIcon(
                  color: Colors.white,
                  isExpanded: isExpanded,
                  onPressed: (value) {
                    setState(
                      () {
                        isExpanded = !isExpanded;
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
        isExpanded ? const NotificationsSection() : const SizedBox(),
      ],
    );
  }
}
