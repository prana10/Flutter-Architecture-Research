import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testpaymnet/injection.dart';
import 'package:testpaymnet/path.dart';

void main() {
  // test service quotes api
  test('test service quotes api', () async {
    // init
    await init();

    // get service
    final quoteService = getIt<QuoteService>();

    // get quotes
    final result = await quoteService.getQuotes();

    // check result
    if (result.isLeft()) {
      result.fold(
        (l) {
          debugPrint('error message: ${l.message}');
          debugPrint('error code: ${l.code}');
        },
        (r) => null,
      );
    } else {
      result.fold(
        (l) => null,
        (r) {
          for (var data in r.quotes) {
            debugPrint('quote: ${data.quote}');
            debugPrint('author: ${data.author}');
          }
        },
      );
    }

    expect(result.isRight(), true);
  });
}
