import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:testpaymnet/injection.dart';

import '/path.dart';

final homeProvider = ChangeNotifierProvider<HomeViewModel>(
  (_) => HomeViewModel(
    quoteService: getIt<QuoteService>(),
  ),
);
