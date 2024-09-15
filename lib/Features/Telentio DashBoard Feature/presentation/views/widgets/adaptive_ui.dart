import 'package:flutter/material.dart';
import 'package:telentio_dashboard/core/utils/size_config.dart';

class AdaptiveUI extends StatelessWidget {
  const AdaptiveUI(
      {super.key,
      required this.mobileLayout,
      required this.miniTabletLayout,
      required this.tabletLayout,
      required this.desktopLayout});
  final WidgetBuilder mobileLayout,
      miniTabletLayout,
      tabletLayout,
      desktopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double maxWidth = constraints.maxWidth;
        if (maxWidth < SizeConfig.miniTablet) {
          return mobileLayout(context);
        } else if (maxWidth < SizeConfig.tablet) {
          return miniTabletLayout(context);
        } else if (maxWidth < SizeConfig.desktop) {
          return tabletLayout(context);
        } else {
          return desktopLayout(context);
        }
      },
    );
  }
}
