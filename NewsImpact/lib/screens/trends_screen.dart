import 'package:flutter/material.dart';
import '../widgets/trend_chart.dart';
import '../services/api_service.dart';

class TrendsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News Trends'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: FutureBuilder(
          future: ApiService.getNewsTrends(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error loading trends'));
            } else {
              final data = snapshot.data;
              return TrendChart(data: data);
            }
          },
        ),
      ),
    );
  }
}
