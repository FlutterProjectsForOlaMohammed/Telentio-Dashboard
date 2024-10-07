import 'package:flutter/material.dart';

class StatisiticsCardModel {
  final String title, value;
  final bool isIncrement;
  final num percentage;
  final Color color;
  final num incOrDecrValue;

  StatisiticsCardModel(
      {required this.incOrDecrValue,
      required this.title,
      required this.value,
      required this.isIncrement,
      required this.percentage,
      required this.color});
}
