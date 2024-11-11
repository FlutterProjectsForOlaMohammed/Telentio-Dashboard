import 'package:flutter/material.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/adaptive_ui.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/desktop_layout.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/mobile_layout.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/tablet_layout.dart';

class TelentioDashBoardView extends StatelessWidget {
  const TelentioDashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveUI(
      mobileLayout: (context) => const MobileLayout(),
      tabletLayout: (context) => const TabletLayout(),
      desktopLayout: (context) => const DesktopLayout(),
    );
  }
}
