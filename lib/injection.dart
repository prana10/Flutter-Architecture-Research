import 'package:get_it/get_it.dart';
import 'package:testpaymnet/path.dart';

final getIt = GetIt.I;

Future<void> init() async {
  // register repository impl
  getIt.registerFactory<QuoteRepositoryImpl>(
    () => QuoteRepositoryImpl(
      dio: AppConfig.dio,
    ),
  );

  // register service
  getIt.registerFactory<QuoteService>(
    () => QuoteService(
      quoteRepository: getIt<QuoteRepositoryImpl>(),
    ),
  );

  // view model
  getIt.registerFactory(
    () => HomeViewModel(
      quoteService: getIt<QuoteService>(),
    ),
  );
}
