class QuotesModel {
  final String quote;
  final String author;
  final String category;

  QuotesModel({
    required this.quote,
    required this.author,
    required this.category,
  });

  factory QuotesModel.fromJson(Map<String, dynamic> json) {
    return QuotesModel(
      quote: json['quote'],
      author: json['author'],
      category: json['category'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'quote': quote,
      'author': author,
      'category': category,
    };
  }
}

class ListQuotesModel {
  final List<QuotesModel> quotes;

  ListQuotesModel({
    required this.quotes,
  });

  factory ListQuotesModel.fromJson(List<dynamic> json) {
    List<QuotesModel> quotes = <QuotesModel>[];
    quotes = json.map((e) => QuotesModel.fromJson(e)).toList();

    return ListQuotesModel(
      quotes: quotes,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'quotes': quotes,
    };
  }
}
