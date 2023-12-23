import 'package:flutter/material.dart';

import '/path.dart';

class HomeViewModel extends ChangeNotifier {
  final QuoteService quoteService;
  HomeViewModel({
    required this.quoteService,
  }) {
    getQuotes();
  }

  ApiStatus apiStatus = ApiStatus.init;
  late ListQuotesModel listQuotesModel;

  Future<void> getQuotes() async {
    try {
      ApiStatus.loading;
      notifyListeners();

      final quotes = await quoteService.getQuotes();

      quotes.fold(
        (l) {
          apiStatus = ApiStatus.error;
          notifyListeners();

          debugPrint(l.message);
          return null;
        },
        (r) {
          apiStatus = ApiStatus.completed;
          notifyListeners();

          for (var data in r.quotes) {
            debugPrint(data.quote);
            debugPrint(data.author);
          }

          listQuotesModel = r;
          return null;
        },
      );
    } catch (e) {
      apiStatus = ApiStatus.error;
      notifyListeners();

      debugPrint(e.toString());
    }
  }
}
