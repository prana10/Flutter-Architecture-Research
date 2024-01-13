import 'package:bored/bored.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> init() async {
  // bored
  getIt.registerFactory<BoredRepository>(
    () => BoredRepositoryImpl(),
  );
}
