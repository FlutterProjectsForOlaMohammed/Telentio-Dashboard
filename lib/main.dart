import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/telentio_dashboard_view.dart';

void main() {
  runApp(
      // DevicePreview(
      //   enabled: true,
      //   builder: (context) => ,
      // ),
      const TelentioDashboardApp());
}

class TelentioDashboardApp extends StatelessWidget {
  const TelentioDashboardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(
          MediaQuery.sizeOf(context).width, MediaQuery.sizeOf(context).height),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return MaterialApp(
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          debugShowCheckedModeBanner: false,
          home: const TelentioDashBoardView(),
        );
      },
    );
  }
}
