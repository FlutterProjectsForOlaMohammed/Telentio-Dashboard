import 'package:flutter/material.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/telentio_dashboard_view.dart';

void main() {
  runApp(const TelentioDashboardApp());
}

class TelentioDashboardApp extends StatelessWidget {
  const TelentioDashboardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TelentioDashBoardView(),
    );
  }
}
