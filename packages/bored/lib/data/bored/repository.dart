import 'package:bored/bored.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BoredRepositoryImpl implements BoredRepository {
  @override
  Future<Either<BaseFailureModel, Bored>> getBored(WidgetRef ref) async {
    try {
      var response = await ref.read(dioProvider).get(
            Endpoint.activity,
          );

      var data = response.data;
      var bored = Bored.fromJson(data);
      return Right(bored);
    } on DioException catch (e) {
      if (e.response?.statusCode == 404) {
        return Left(
          BaseFailureModel(
            message: 'Not Found',
            code: e.response?.statusCode.toString() ?? '',
          ),
        );
      } else {
        return Left(
          BaseFailureModel(
            message: e.message!,
            code: e.response?.statusCode.toString() ?? '',
          ),
        );
      }
    }
  }
}

// provider
final boredRepositoryProvider = Provider<BoredRepository>(
  (ref) => BoredRepositoryImpl(),
);
