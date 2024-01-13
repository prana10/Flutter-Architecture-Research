import 'package:bored/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/app/app.dart';

void main() {
  init();
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}
