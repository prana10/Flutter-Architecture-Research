import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '/path.dart';

class QuoteRepositoryImpl implements QuoteRepository {
  final Dio dio;

  QuoteRepositoryImpl({
    required this.dio,
  });

  @override
  Future<Either<ErrorFailure, ListQuotesModel>> getQuotes() async {
    try {
      AppConfig.addHeaderDio("x-api-key", AppConfig.apiKey);

      final response = await dio.get(
        APIEndpoint.quotes,
      );

      return Right(
        ListQuotesModel.fromJson(response.data),
      );
    } on DioException catch (e) {
      return Left(
        ErrorFailure(
          message: e.response!.data['error'].toString(),
          statusMessage: e.response!.statusMessage.toString(),
          code: e.response!.statusCode!,
        ),
      );
    } catch (e) {
      rethrow;
    }
  }
}
