import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class TrendChart extends StatelessWidget {
  final List<charts.Series> data;

  TrendChart({required this.data});

  @override
  Widget build(BuildContext context) {
    return charts.LineChart(
      data,
      animate: true,
    );
  }
}
