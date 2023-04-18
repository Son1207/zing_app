import 'package:flutter/material.dart';
import 'package:zing_app/page/zingchart/components/chart.dart';

class ZingChartPage extends StatelessWidget {
  const ZingChartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const[
          Chart(),
        ],
      ),
    );
  }
}