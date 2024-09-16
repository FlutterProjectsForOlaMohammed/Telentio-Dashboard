import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:telentio_dashboard/core/utils/app_images.dart';
import 'package:telentio_dashboard/core/utils/color_palette.dart';

class SearchIcon extends StatelessWidget {
  const SearchIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
          color: ColorPalette.purple, borderRadius: BorderRadius.circular(8)),
      child: IconButton(
        onPressed: () {},
        padding: EdgeInsets.zero,
        icon: SvgPicture.asset(AppImages.imagesSearch),
      ),
    );
  }
}
