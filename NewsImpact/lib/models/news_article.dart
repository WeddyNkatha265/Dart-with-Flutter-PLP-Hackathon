class NewsArticle {
  final String title;
  final String description;
  final String content;
  final String publishedAt;

  NewsArticle({
    required this.title,
    required this.description,
    required this.content,
    required this.publishedAt,
  });

  factory NewsArticle.fromJson(Map<String, dynamic> json) {
    return NewsArticle(
      title: json['title'],
      description: json['description'],
      content: json['content'],
      publishedAt: json['publishedAt'],
    );
  }
}
