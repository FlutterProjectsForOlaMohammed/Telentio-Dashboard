import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:telentio_dashboard/core/utils/app_images.dart';
import 'package:telentio_dashboard/core/utils/app_styles.dart';

class NotificationsSection extends StatelessWidget {
  const NotificationsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return LayoutBuilder(
          builder: (context, constraints) {
            return Container(
              width: constraints.maxWidth,
              color: Colors.white.withOpacity(0.2),
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 4,
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Notifications",
                        style: AppStyles.styleRegular24(context),
                      ),
                    ),
                  ),
                  const Expanded(
                    child: SizedBox(
                      width: 10,
                    ),
                  ),
                  Expanded(
                    child: SvgPicture.asset(
                      AppImages.imagesNotificationIcon,
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
