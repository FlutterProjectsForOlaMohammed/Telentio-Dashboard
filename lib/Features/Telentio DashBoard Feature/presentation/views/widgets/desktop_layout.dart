import 'package:flutter/material.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/custom_drawer.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/dashboard_section.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/notifications_and_profile_section.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffE5EAFF),
      body: Row(
        children: [
          Expanded(
            flex: 3,
            child: CustomDrawer(),
          ),
          Expanded(
            flex: 12,
            child: DashboardSection(),
          ),
          Expanded(
            flex: 4,
            child: NotificationsAndProfileSection(),
          ),
        ],
      ),
    );
  }
}
