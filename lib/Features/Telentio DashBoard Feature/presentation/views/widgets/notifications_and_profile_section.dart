import 'package:flutter/material.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/notifications_expanded_icon.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/notifications_section.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/profile_expanded_icon.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/profile_section.dart';
import 'package:telentio_dashboard/core/utils/color_palette.dart';

class NotificationsAndProfileSection extends StatelessWidget {
  const NotificationsAndProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorPalette.purple,
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxHeight >= 525) {
            return const CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: ProfileSection(),
                ),
                SliverFillRemaining(
                  child: NotificationsSection(),
                )
              ],
            );
          } else {
            return const CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: ProfileExpandedIcon(),
                ),
                SliverToBoxAdapter(
                  child: NotificationsExpandedIcon(),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
