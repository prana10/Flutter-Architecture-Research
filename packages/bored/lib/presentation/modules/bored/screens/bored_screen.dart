import 'package:bored/bored.dart';
import 'package:bored/injection.dart';
import 'package:bored/presentation/modules/bored/provider/bored_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BoredScreen extends ConsumerWidget {
  const BoredScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bored = ref.watch(
      getBoredProviderProvider(
        ref,
        getIt.get<BoredRepository>(),
      ),
    );
    return Scaffold(
      body: Center(
        child: bored.when(
          data: (data) => Text(data.activity),
          loading: () => const CircularProgressIndicator(),
          error: (e, s) => Text(e.toString()),
        ),
      ),
    );
  }
}
