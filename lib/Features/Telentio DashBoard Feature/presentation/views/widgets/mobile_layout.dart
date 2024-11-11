import 'package:flutter/material.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/notifications_floating_action_button.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/custom_drawer.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/mobile_layout_body.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/mobile_layout_header.dart';

class MobileLayout extends StatefulWidget {
  const MobileLayout({super.key});

  @override
  State<MobileLayout> createState() => _MobileLayoutState();
}

class _MobileLayoutState extends State<MobileLayout> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: const CustomDrawer(),
      backgroundColor: const Color(0xffE5EAFF),
      floatingActionButton: const NotificationsFloatingActionButton(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MobileLayoutHeader(scaffoldKey: scaffoldKey),
          const SizedBox(
            height: 10,
          ),
          const Expanded(
            child: MobileLayoutBody(),
          ),
        ],
      ),
    );
  }
}