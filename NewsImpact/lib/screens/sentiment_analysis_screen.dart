import 'package:flutter/material.dart';
import '../models/news_article.dart';
import '../services/sentiment_analysis_service.dart';

class SentimentAnalysisScreen extends StatelessWidget {
  final NewsArticle article;

  SentimentAnalysisScreen({required this.article});

  @override
  Widget build(BuildContext context) {
    final sentiment = SentimentAnalysisService.analyze(article.content);

    return Scaffold(
      appBar: AppBar(
        title: Text('Sentiment Analysis'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sentiment for: ${article.title}',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('Overall Sentiment: ${sentiment.overall}'),
            Text('Positive: ${sentiment.positive}%'),
            Text('Neutral: ${sentiment.neutral}%'),
            Text('Negative: ${sentiment.negative}%'),
          ],
        ),
      ),
    );
  }
}
