import 'package:flutter/material.dart';
import 'package:telentio_dashboard/core/utils/app_images.dart';

class ProfileImageWidget extends StatelessWidget {
  const ProfileImageWidget({
    super.key, required this.radiusOfImage,
  });
final double radiusOfImage;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radiusOfImage,
      backgroundColor: Colors.white,
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Container(
          height: 150,
          width: 150,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(AppImages.imagesPersonPic),
            ),
          ),
        ),
      ),
    );
  }
}
