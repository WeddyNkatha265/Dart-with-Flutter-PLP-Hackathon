import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/news_article.dart';
import '../utils/constants.dart';

class ApiService {
  static Future<List<NewsArticle>> getLatestNews() async {
    final response = await http.get(Uri.parse(Constants.newsApiUrl));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return (data['articles'] as List)
          .map((article) => NewsArticle.fromJson(article))
          .toList();
    } else {
      throw Exception('Failed to load news');
    }
  }

  static Future<List> getNewsTrends() async {
    // Placeholder for trend data fetching logic
    return [];
  }
}
