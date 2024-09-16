import 'package:flutter/material.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/data/models/drawer_item_model.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/custom_drawer_item.dart';
import 'package:telentio_dashboard/core/utils/app_images.dart';

class CustomDrawerItemsList extends StatefulWidget {
  const CustomDrawerItemsList({super.key});
  @override
  State<CustomDrawerItemsList> createState() => _CustomDrawerItemsListState();
}

class _CustomDrawerItemsListState extends State<CustomDrawerItemsList> {
  int selectedItem = 0;
  List<DrawerItemModel> customDrawerItemsList = const [
    DrawerItemModel(title: "Dashboard", icon: AppImages.imagesDashboard),
    DrawerItemModel(title: "Jobs", icon: AppImages.imagesJob),
    DrawerItemModel(title: "Schedule", icon: AppImages.imagesSchedule),
    DrawerItemModel(title: "Documents", icon: AppImages.imagesDocument),
    DrawerItemModel(title: "Statistics", icon: AppImages.imagesStatistics),
    DrawerItemModel(title: "Community", icon: AppImages.imagesCommunity),
    DrawerItemModel(title: "Messages", icon: AppImages.imagesMessage),
    DrawerItemModel(title: "Logout", icon: AppImages.imagesLogout),
  ];
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: customDrawerItemsList.length,
      itemBuilder: (context, index) {
        return CustomDrawerItem(
          onPressed: () {
            setState(() {
              selectedItem = index;
            });
          },
          isSelected: (selectedItem == index),
          drawerItemModel: customDrawerItemsList[index],
        );
      },
    );
  }
}
