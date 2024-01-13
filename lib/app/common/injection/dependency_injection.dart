import 'package:get_it/get_it.dart';

import '/path.dart';

final getIt = GetIt.instance;

Future<void> init() async {
  // bored
  getIt.registerLazySingleton<BoredDataSource>(
    () => BoredDataSource(),
  );
  getIt.registerLazySingleton<BoredRepository>(
    () => BoredRepositoryImpl(
      boredDataSource: getIt<BoredDataSource>(),
    ),
  );
}
