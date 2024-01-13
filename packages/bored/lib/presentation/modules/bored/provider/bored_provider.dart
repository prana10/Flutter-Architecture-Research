import 'package:bored/bored.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'bored_provider.g.dart';

@riverpod
Future<Either<BaseFailureModel, Bored>> getBoredProvider(
  GetBoredProviderRef ref,
  WidgetRef widgetRef,
  BoredRepository boredRepository,
) async {
  // widgetRef.read(boredRepositoryProvider).getBored(widgetRef);
  var bored = await boredRepository.getBored(widgetRef);
  return bored;
}
