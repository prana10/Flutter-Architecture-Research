import 'package:bored/bored.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class BoredRepository {
  Future<Either<BaseFailureModel, Bored>> getBored(WidgetRef ref);
}
