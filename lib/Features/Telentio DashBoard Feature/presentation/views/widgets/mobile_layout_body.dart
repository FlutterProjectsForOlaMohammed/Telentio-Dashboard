import 'package:flutter/material.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/acquisitions_section.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/application_received_time_section.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/dashboard_section_header.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/ratio_by_gender_section.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/states_of_applications_section.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/statisitics_card_carousel_slider.dart';

class MobileLayoutBody extends StatelessWidget {
  const MobileLayoutBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(32, 0, 32, 32),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
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
                (MediaQuery.sizeOf(context).width <= 300)
                    ? const Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          AcquisitionsSection(
                            addMargin: 0,
                          ),
                          RatioByGenderSection()
                        ],
                      )
                    : const IntrinsicHeight(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Expanded(
                              child: AcquisitionsSection(
                                addMargin: 0,
                              ),
                            ),
                            Expanded(
                              child: RatioByGenderSection(),
                            ),
                          ],
                        ),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}