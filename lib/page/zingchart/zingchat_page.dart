import 'package:flutter/material.dart';
import 'package:zing_app/page/zingchart/components/chart.dart';

class zingchart_page extends StatelessWidget {
  const zingchart_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const[
          BarChartSample2(),
        ],
      ),
    );
  }
}