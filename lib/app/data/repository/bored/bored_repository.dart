import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '/path.dart';

abstract class BoredRepository {
  Future<Either<BaseFailure, Bored>> getRandomActivity();
}

class BoredRepositoryImpl implements BoredRepository {
  final BoredDataSource boredDataSource;

  BoredRepositoryImpl({
    required this.boredDataSource,
  });

  @override
  Future<Either<BaseFailure, Bored>> getRandomActivity() async {
    try {
      // hit the api using boredDataSource
      var response = await boredDataSource.getRandomActivity();
      return response;
    } on DioException catch (e) {
      // response for dio exception
      // e.g. 404, 500, etc
      if (kDebugMode) {
        print(e);
      }
      return Left(
        BaseFailure(
          message: e.toString(),
        ),
      );
    } catch (e) {
      // response for other exception
      if (kDebugMode) {
        print(e);
      }
      return Left(
        BaseFailure(
          message: e.toString(),
        ),
      );
    }
  }
}
