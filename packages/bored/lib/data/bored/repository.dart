import 'package:bored/bored.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BoredRepositoryImpl implements BoredRepository {
  @override
  Future<Bored> getBored(WidgetRef ref) async {
    try {
      var response = await ref.read(dioProvider).get(
            Endpoint.activity,
          );

      var data = response.data;
      var bored = Bored.fromJson(data);
      return bored;
    } on DioException catch (e) {
      if (e.response?.statusCode == 404) {
        rethrow;
      } else {
        rethrow;
      }
    }
  }
}

// provider
final boredRepositoryProvider = Provider<BoredRepository>(
  (ref) => BoredRepositoryImpl(),
);
