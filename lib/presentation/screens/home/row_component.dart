import 'package:flutter/material.dart';
import 'package:smartic_app/presentation/widgets/circular_gauge.dart';

class RowComponent extends StatelessWidget {
  const RowComponent(
      {super.key, required this.height,
      required this.width,
      required this.title1,
      required this.title2, required this.titleGauge,});
  final double width;
  final double height;
  final String title1;
  final String title2;
  final String titleGauge;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CircularGauge(
          width: width,
          height: height,
          title: title1,
          titleGauge: titleGauge,
        ),
        CircularGauge(
          width: width,
          height: height,
          title: title2,
          titleGauge: titleGauge,
        ),
      ],
    );
  }
}