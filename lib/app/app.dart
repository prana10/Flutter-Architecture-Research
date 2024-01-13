import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '/path.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BoredBloc(
        boredRepository: getIt.get<BoredRepository>(),
      ),
      child: MaterialApp(
        title: "Flutter Architecture Using BloC Pattern",
        routes: {
          '/': (context) => const BoredScreen(),
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
