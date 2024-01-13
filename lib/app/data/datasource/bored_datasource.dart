import 'package:dartz/dartz.dart';

import '/path.dart';

class BoredDataSource extends NetworkService {
  // Get Random Activity
  Future<Either<BaseFailure, Bored>> getRandomActivity() async {
    try {
      var response = await get(APIEndpoint.activity);
      if (response != null) {
        var data = response.data;
        var bored = Bored.fromJson(data);

        return Right(bored);
      }
    } catch (e) {
      return Left(
        BaseFailure(
          message: e.toString(),
        ),
      );
    }

    // return something went wrong
    return Left(
      BaseFailure(
        message: 'Something went wrong',
      ),
    );
  }
}
