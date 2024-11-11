import 'package:flutter/material.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/search_icon.dart';
import 'package:telentio_dashboard/core/utils/app_styles.dart';
import 'package:telentio_dashboard/core/utils/color_palette.dart';
import 'package:telentio_dashboard/core/utils/responsive_font.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextFormField(
        decoration: InputDecoration(
          suffixIconConstraints: BoxConstraints(
            maxWidth: ResponsiveFont.responsiveFontSize(context, baseFont: 40),
            maxHeight: ResponsiveFont.responsiveFontSize(context, baseFont: 32),
            minWidth: ResponsiveFont.responsiveFontSize(context, baseFont: 30),
            minHeight: ResponsiveFont.responsiveFontSize(context, baseFont: 22),
          ),
          suffixIcon: const SearchIcon(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(),
          contentPadding: const EdgeInsets.only(left: 16, right: 16),
          isDense: true,
          fillColor: const Color(0xffCCD4FF),
          filled: true,
          hintText: "Search",
          hintStyle: AppStyles.styleRegular10(context)
              .copyWith(color: ColorPalette.white),
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: Colors.transparent),
    );
  }
}
