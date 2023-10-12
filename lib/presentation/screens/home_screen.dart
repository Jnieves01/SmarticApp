import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smartic_app/presentation/screens/home/row_component.dart';
import 'package:smartic_app/presentation/widgets/custom_app_bar.dart';
import 'dart:math' as math;

import 'package:smartic_app/presentation/widgets/circular_gauge.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        appBar: CustomAppBar(
          widget: Image.asset(
            'assets/img/logo.png',
            width: 80,
          ),
          title: "OEE",
          height: 60,
          icon: Icons.arrow_forward_ios_outlined,
          angle: 90 * math.pi / 180,
          function: () {

              context.go("/login");

          }, 
          
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
          child: const Center(
            child: SingleChildScrollView(
              child: Column(children: [
                Text(
                  "27 Agosto del 2023, Jueves",
                ),
                Divider(
                  thickness: 2,
                  color: Colors.grey,
                ),
                CircularGauge(
                  width: 300,
                  height: 160,
                  title: "Impregnadora F2",
                  titleGauge: "OFE",
                ),
                SizedBox(
                  height: 40,
                ),
                RowComponent(height: 140,width: 150, title1: "Impregnadora F2", title2: "Impregnadora F1",titleGauge: "OEE",),
                SizedBox(
                  height: 40,
                ),
                RowComponent(height: 140,width: 150, title1: "Impregnadora D1", title2: "Impregnadora D2",titleGauge: "OEE",),
                SizedBox(
                  height: 40,
                ),
                RowComponent(height: 140,width: 150, title1: "Impregnadora D3", title2: "Impregnadora D4",titleGauge: "OEE",),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
