import 'package:flutter/material.dart';
import 'package:telentio_dashboard/core/utils/app_styles.dart';

class CustomDrawerTitle extends StatelessWidget {
  const CustomDrawerTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.only(top: 32, bottom: 50),
          child: Text(
            "telentio",
            style: AppStyles.styleRegular28(context),
          ),
        ),
      ),
    );
  }
}
