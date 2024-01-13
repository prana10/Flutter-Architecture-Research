import 'package:bored/bored.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Architecture Research",
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const BoredScreen(),
      },
    );
  }
}
