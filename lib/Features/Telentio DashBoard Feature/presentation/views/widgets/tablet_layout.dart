import 'package:flutter/material.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/acquisitions_section.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/application_received_time_section.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/custom_drawer.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/dashboard_section_header.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/drawer_icon.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/notifications_and_profile_section.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/ratio_by_gender_section.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/states_of_applications_section.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/statisitics_card_carousel_slider.dart';

class TabletLayout extends StatefulWidget {
  const TabletLayout({super.key});

  @override
  State<TabletLayout> createState() => _TabletLayoutState();
}

class _TabletLayoutState extends State<TabletLayout> {
  GlobalKey<ScaffoldState> drawerKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: drawerKey,
      drawer: const CustomDrawer(),
      backgroundColor: const Color(0xffE5EAFF),
      body: Row(
        children: [
          Expanded(
            flex: 6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DrawerIcon(
                  drawerKey: drawerKey,
                  onPressed: () {
                    drawerKey.currentState!.openDrawer();
                  },
                ),
                Expanded(
                  child: SingleChildScrollView(
                    padding: EdgeInsets.zero,
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(32, 0, 32, 32),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const DashboardSectionHeader(),
                          const SizedBox(
                            height: 96,
                          ),
                          const StatisiticsCardsCarouselSlider(),
                          const SizedBox(
                            height: 32,
                          ),
                          const StatesOfApplicationsSection(),
                          const SizedBox(
                            height: 32,
                          ),
                          const ApplicationReceivedTimeSection(),
                          const SizedBox(
                            height: 32,
                          ),
                          IntrinsicHeight(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Expanded(
                                  child: ConstrainedBox(
                                    constraints:
                                        const BoxConstraints(maxHeight: 350),
                                    child: const AcquisitionsSection(),
                                  ),
                                ),
                                const Expanded(
                                  child: RatioByGenderSection(),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            flex: 3,
            child: NotificationsAndProfileSection(),
          ),
        ],
      ),
    );
  }
}
