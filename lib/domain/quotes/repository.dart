import 'package:dartz/dartz.dart';

import '/path.dart';

abstract class QuoteRepository {
  Future<Either<ErrorFailure, ListQuotesModel>> getQuotes();
}
