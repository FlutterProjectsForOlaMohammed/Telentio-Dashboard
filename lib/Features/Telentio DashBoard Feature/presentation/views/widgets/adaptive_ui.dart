import 'package:flutter/material.dart';
import 'package:telentio_dashboard/core/utils/size_config.dart';

class AdaptiveUI extends StatelessWidget {
  const AdaptiveUI(
      {super.key,
      required this.mobileLayout,
      required this.tabletLayout,
      required this.desktopLayout});
  final WidgetBuilder mobileLayout,
      tabletLayout,
      desktopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double maxWidth = constraints.maxWidth;
        if (maxWidth < SizeConfig.tablet) {
          return mobileLayout(context);
        } else if (maxWidth < SizeConfig.desktop) {
          return tabletLayout(context);
        } else {
          return desktopLayout(context);
        }
      },
    );
  }
}
