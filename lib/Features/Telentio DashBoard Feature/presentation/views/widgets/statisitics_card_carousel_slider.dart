import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/data/models/statisitics_card_model.dart';
import 'package:telentio_dashboard/Features/Telentio%20DashBoard%20Feature/presentation/views/widgets/statisitics_card.dart';
import 'package:telentio_dashboard/core/utils/color_palette.dart';

class StatisiticsCardsCarouselSlider extends StatelessWidget {
  const StatisiticsCardsCarouselSlider({
    super.key,
  });
  static var list = [
    Padding(
      padding: const EdgeInsets.only(right: 32),
      child: StatisiticsCard(
        statisiticsCardModel: StatisiticsCardModel(
            incOrDecrValue: 14,
            color: ColorPalette.purple,
            isIncrement: true,
            percentage: 74,
            title: "Total Applications",
            value: "5852"),
      ),
    ),
    Padding(
      padding: const EdgeInsets.only(right: 16),
      child: StatisiticsCard(
        statisiticsCardModel: StatisiticsCardModel(
            incOrDecrValue: 06,
            color: ColorPalette.yellow,
            isIncrement: true,
            percentage: 60,
            title: "Shortlisted Candidates",
            value: "3145"),
      ),
    ),
    Padding(
      padding: const EdgeInsets.only(left: 16),
      child: StatisiticsCard(
        statisiticsCardModel: StatisiticsCardModel(
            incOrDecrValue: 04,
            color: ColorPalette.orange,
            isIncrement: false,
            percentage: 48,
            title: "Rejected Candidates",
            value: "1035"),
      ),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(minHeight: 120, maxHeight: 300),
      child: CarouselSlider(
        options: CarouselOptions(
            padEnds: false,
            height: MediaQuery.sizeOf(context).height * 0.18,
            aspectRatio: 266 / 126,
            viewportFraction: 0.6,
            initialPage: 0,
            enableInfiniteScroll: false,
            autoPlay: true,
            disableCenter: true),
        items: list.map((i) {
          return Builder(
            builder: (BuildContext context) {
              return i;
            },
          );
        }).toList(),
      ),
    );
  }
}