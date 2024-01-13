import 'package:bored/bored.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class BoredRepository {
  Future<Bored> getBored(WidgetRef ref);
}
