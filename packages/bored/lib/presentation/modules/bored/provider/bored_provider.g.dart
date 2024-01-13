// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bored_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getBoredProviderHash() => r'4c362c651256abb5c7c0fd5b0f8445ba99dc294c';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [getBoredProvider].
@ProviderFor(getBoredProvider)
const getBoredProviderProvider = GetBoredProviderFamily();

/// See also [getBoredProvider].
class GetBoredProviderFamily extends Family<AsyncValue<void>> {
  /// See also [getBoredProvider].
  const GetBoredProviderFamily();

  /// See also [getBoredProvider].
  GetBoredProviderProvider call(
    WidgetRef widgetRef,
    BoredRepository boredRepository,
  ) {
    return GetBoredProviderProvider(
      widgetRef,
      boredRepository,
    );
  }

  @override
  GetBoredProviderProvider getProviderOverride(
    covariant GetBoredProviderProvider provider,
  ) {
    return call(
      provider.widgetRef,
      provider.boredRepository,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getBoredProviderProvider';
}

/// See also [getBoredProvider].
class GetBoredProviderProvider extends AutoDisposeFutureProvider<void> {
  /// See also [getBoredProvider].
  GetBoredProviderProvider(
    WidgetRef widgetRef,
    BoredRepository boredRepository,
  ) : this._internal(
          (ref) => getBoredProvider(
            ref as GetBoredProviderRef,
            widgetRef,
            boredRepository,
          ),
          from: getBoredProviderProvider,
          name: r'getBoredProviderProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getBoredProviderHash,
          dependencies: GetBoredProviderFamily._dependencies,
          allTransitiveDependencies:
              GetBoredProviderFamily._allTransitiveDependencies,
          widgetRef: widgetRef,
          boredRepository: boredRepository,
        );

  GetBoredProviderProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.widgetRef,
    required this.boredRepository,
  }) : super.internal();

  final WidgetRef widgetRef;
  final BoredRepository boredRepository;

  @override
  Override overrideWith(
    FutureOr<void> Function(GetBoredProviderRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetBoredProviderProvider._internal(
        (ref) => create(ref as GetBoredProviderRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        widgetRef: widgetRef,
        boredRepository: boredRepository,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _GetBoredProviderProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetBoredProviderProvider &&
        other.widgetRef == widgetRef &&
        other.boredRepository == boredRepository;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, widgetRef.hashCode);
    hash = _SystemHash.combine(hash, boredRepository.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetBoredProviderRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `widgetRef` of this provider.
  WidgetRef get widgetRef;

  /// The parameter `boredRepository` of this provider.
  BoredRepository get boredRepository;
}

class _GetBoredProviderProviderElement
    extends AutoDisposeFutureProviderElement<void> with GetBoredProviderRef {
  _GetBoredProviderProviderElement(super.provider);

  @override
  WidgetRef get widgetRef => (origin as GetBoredProviderProvider).widgetRef;
  @override
  BoredRepository get boredRepository =>
      (origin as GetBoredProviderProvider).boredRepository;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
