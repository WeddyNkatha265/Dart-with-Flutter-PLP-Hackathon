import 'package:flutter/material.dart';
import '../widgets/news_card.dart';
import '../services/api_service.dart';
import '../models/news_article.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<NewsArticle> _newsArticles = [];

  @override
  void initState() {
    super.initState();
    _fetchNews();
  }

  Future<void> _fetchNews() async {
    final articles = await ApiService.getLatestNews();
    setState(() {
      _newsArticles = articles;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NewsImpact'),
        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: _fetchNews,
          )
        ],
      ),
      body: ListView.builder(
        itemCount: _newsArticles.length,
        itemBuilder: (context, index) {
          return NewsCard(article: _newsArticles[index]);
        },
      ),
    );
  }
}
