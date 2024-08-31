import 'package:flutter/material.dart';
import '../models/news_article.dart';

class NewsDetailScreen extends StatelessWidget {
  final NewsArticle article;

  NewsDetailScreen({required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(article.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              article.title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(article.description),
            SizedBox(height: 16),
            Text("Published at: ${article.publishedAt}"),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Share article logic
              },
              child: Text('Share'),
            ),
          ],
        ),
      ),
    );
  }
}
