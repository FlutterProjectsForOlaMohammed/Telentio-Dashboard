import 'package:flutter/material.dart';
import 'package:telentio_dashboard/core/utils/color_palette.dart';
import 'package:telentio_dashboard/core/utils/responsive_font.dart';

class DrawerIcon extends StatelessWidget {
  const DrawerIcon({
    super.key,
    required this.drawerKey,
    this.onPressed,
  });

  final GlobalKey<ScaffoldState> drawerKey;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 8, 32, 0),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          Icons.menu,
          color: ColorPalette.purple,
          size: ResponsiveFont.responsiveFontSize(context, baseFont: 24),
        ),
      ),
    );
  }
}
