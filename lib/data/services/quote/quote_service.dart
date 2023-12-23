import 'package:dartz/dartz.dart';
import 'package:testpaymnet/path.dart';

class QuoteService {
  final QuoteRepository quoteRepository;

  QuoteService({
    required this.quoteRepository,
  });

  Future<Either<ErrorFailure, ListQuotesModel>> getQuotes() async {
    return await quoteRepository.getQuotes();
  }
}
