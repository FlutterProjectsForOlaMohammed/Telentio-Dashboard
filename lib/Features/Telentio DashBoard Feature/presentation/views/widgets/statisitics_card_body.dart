import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/data/models/statisitics_card_model.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/statisitics_percent_indicator.dart';
import 'package:telentio_dashboard/core/utils/app_images.dart';
import 'package:telentio_dashboard/core/utils/app_styles.dart';
import 'package:telentio_dashboard/core/utils/responsive_font.dart';

class StatisiticsCardBody extends StatelessWidget {
  const StatisiticsCardBody({super.key, required this.statisiticsCardModel});
  final StatisiticsCardModel statisiticsCardModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  statisiticsCardModel.value,
                  style: AppStyles.styleBold24(context),
                ),
                const Flexible(
                  child: SizedBox(
                    height: 21,
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(
                      statisiticsCardModel.isIncrement
                          ? AppImages.imagesArrowInc
                          : AppImages.imagesArrowDecr,
                      height: ResponsiveFont.responsiveFontSize(context,
                          baseFont: 16),
                      colorFilter: ColorFilter.mode(
                          statisiticsCardModel.color, BlendMode.srcIn),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    RichText(
                      text: TextSpan(
                        style: AppStyles.styleSemiBold14(context).copyWith(
                          color: statisiticsCardModel.color,
                        ),
                        children: [
                          statisiticsCardModel.isIncrement
                              ? const TextSpan(text: "+")
                              : const TextSpan(text: "-"),
                          TextSpan(
                            text: "${statisiticsCardModel.incOrDecrValue} Inc",
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Flexible(
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: StatisiticsPercentIndicator(
              color: statisiticsCardModel.color,
              text: statisiticsCardModel.percentage.toString(),
              percentage: statisiticsCardModel.percentage,
            ),
          ),
        ),
      ],
    );
  }
}
