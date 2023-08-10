import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../models/bar_data.dart';

class BarGraph extends StatelessWidget {
  final List weeklySummery;
  const BarGraph({super.key, required this.weeklySummery});

  @override
  Widget build(BuildContext context) {
    BarData myBarData = BarData(
        sunAmount: weeklySummery[0],
        monAmount: weeklySummery[1],
        tueAmount: weeklySummery[2],
        wedAmount: weeklySummery[3],
        thurAmount: weeklySummery[4],
        friAmount: weeklySummery[5],
        satAmount: weeklySummery[6]);
    myBarData.initializeBarData();
    return Scaffold(
      body: SafeArea(
        child: BarChart(
          BarChartData(
              maxY: 200,
              minY: 0,
              barGroups: myBarData.barData
                  .map(
                    (data) => BarChartGroupData(x: data.x, barRods: [
                      BarChartRodData(
                        width: 20,
                        toY: data.y,
                        color: Colors.red,
                      ),
                    ]),
                  )
                  .toList()),
        ),
      ),
    );
  }
}
