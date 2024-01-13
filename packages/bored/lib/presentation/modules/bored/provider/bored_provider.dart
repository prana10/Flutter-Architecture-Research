import 'package:bored/bored.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'bored_provider.g.dart';

@riverpod
Future<Bored> getBoredProvider(
  GetBoredProviderRef ref,
  WidgetRef widgetRef,
  BoredRepository boredRepository,
) async {
  try {
    // widgetRef.read(boredRepositoryProvider).getBored(widgetRef);
    var bored = await BoredRepositoryImpl().getBored(widgetRef);
    return bored;
  } catch (e) {
    rethrow;
  }
}
