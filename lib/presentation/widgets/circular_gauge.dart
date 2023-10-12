import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class CircularGauge extends StatelessWidget {
  const CircularGauge(
      {super.key,
      required this.width,
      required this.height,
      required this.title, required this.titleGauge});

  final double width;
  final double height;
  final String title;
  final String titleGauge;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 255, 255, 255),
      elevation: 1,
      shape: const RoundedRectangleBorder(),
      child: SizedBox(
        width: width,
        height: height,
        child: SfRadialGauge(
          title: GaugeTitle(text: title),
          animationDuration: 3500,
          enableLoadingAnimation: true,
          axes: <RadialAxis>[
            RadialAxis(
              radiusFactor: 0.64,
              maximum: 100,
              minimum: 0,
              interval: 20,
              showLabels: false,
              showFirstLabel: false,
              showTicks: false,
              labelOffset: 8,
              minorTicksPerInterval: 10,
              ranges: <GaugeRange>[
                GaugeRange(
                    startValue: 0,
                    endValue: 50,
                    startWidth: 0.265,
                    sizeUnit: GaugeSizeUnit.factor,
                    endWidth: 0.265,
                    color: const Color.fromARGB(190, 218, 57, 57)),
                GaugeRange(
                    startValue: 50,
                    endValue: 63.4,
                    startWidth: 0.265,
                    sizeUnit: GaugeSizeUnit.factor,
                    endWidth: 0.265,
                    color: const Color.fromARGB(190, 169, 172, 0)),
                GaugeRange(
                    startValue: 63.4,
                    endValue: 100,
                    startWidth: 0.265,
                    sizeUnit: GaugeSizeUnit.factor,
                    endWidth: 0.265,
                    color: const Color.fromRGBO(123, 199, 34, 0.75)),
              ],
            ),
            RadialAxis(
              minimum: 0,
              maximum: 100,
              showTicks: false,
              showLabels: false,
              interval: 20,
              minorTicksPerInterval: 9,
              showAxisLine: false,
              radiusFactor: 0.9,
              labelOffset: 8,
              ranges: <GaugeRange>[
                GaugeRange(
                    startValue: 0,
                    endValue: 60,
                    startWidth: 0.265,
                    sizeUnit: GaugeSizeUnit.factor,
                    endWidth: 0.265,
                    color: const Color.fromARGB(190, 218, 57, 57)),
                GaugeRange(
                    startValue: 60,
                    endValue: 70,
                    startWidth: 0.265,
                    sizeUnit: GaugeSizeUnit.factor,
                    endWidth: 0.265,
                    color: const Color.fromARGB(190, 169, 172, 0)),
                GaugeRange(
                    startValue: 70,
                    endValue: 100,
                    startWidth: 0.265,
                    sizeUnit: GaugeSizeUnit.factor,
                    endWidth: 0.265,
                    color: const Color.fromRGBO(123, 199, 34, 0.75)),
              ],
              annotations:  <GaugeAnnotation>[
                const GaugeAnnotation(
                  angle: 90,
                  positionFactor: 0.0,
                  widget: Text(
                    '16.7%',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                GaugeAnnotation(
                  angle: 90,
                  positionFactor: 0.7,
                  widget: Text(
                    titleGauge,
                    style: const TextStyle(fontSize: 15),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
