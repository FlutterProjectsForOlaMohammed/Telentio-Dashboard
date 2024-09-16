import 'package:flutter/material.dart';

class CustomVerticalDivider extends StatelessWidget {
  const CustomVerticalDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: const Color.fromARGB(255, 226, 227, 232),
      ),
    );
  }
}
