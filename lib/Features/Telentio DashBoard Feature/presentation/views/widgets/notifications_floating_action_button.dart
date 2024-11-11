import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/notifications_section.dart';
import 'package:telentio_dashboard/core/utils/app_images.dart';
import 'package:telentio_dashboard/core/utils/color_palette.dart';

class NotificationsFloatingActionButton extends StatelessWidget {
  const NotificationsFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const CircleBorder(),
      elevation: 0,
      backgroundColor: ColorPalette.purple.withOpacity(0.2),
      splashColor: ColorPalette.lightPurple,
      onPressed: () {
        showCupertinoModalPopup(
          filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
          context: context,
          builder: (context) {
            return Center(
              child: Container(
                width: MediaQuery.sizeOf(context).width / 1.5,
                decoration: BoxDecoration(
                    color: ColorPalette.purple,
                    borderRadius: BorderRadius.circular(5)),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const NotificationsSection(),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.2,
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
      child: SvgPicture.asset(
        AppImages.imagesNotificationIcon,
        colorFilter:
            const ColorFilter.mode(ColorPalette.purple, BlendMode.srcIn),
      ),
    );
  }
}
