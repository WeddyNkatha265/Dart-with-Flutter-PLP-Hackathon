import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'utils/theme.dart';

void main() {
  runApp(NewsImpactApp());
}

class NewsImpactApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NewsImpact',
      theme: AppTheme.lightTheme,
      home: HomeScreen(),
    );
  }
}
