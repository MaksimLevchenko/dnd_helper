// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pages_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$pagesStateHash() => r'c8c9a951b7dc4257a748080508148e68fc40672a';

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

abstract class _$PagesState extends BuildlessAsyncNotifier<PagesStateModel> {
  late final String characterId;

  FutureOr<PagesStateModel> build(
    String characterId,
  );
}

/// See also [PagesState].
@ProviderFor(PagesState)
const pagesStateProvider = PagesStateFamily();

/// See also [PagesState].
class PagesStateFamily extends Family<AsyncValue<PagesStateModel>> {
  /// See also [PagesState].
  const PagesStateFamily();

  /// See also [PagesState].
  PagesStateProvider call(
    String characterId,
  ) {
    return PagesStateProvider(
      characterId,
    );
  }

  @override
  PagesStateProvider getProviderOverride(
    covariant PagesStateProvider provider,
  ) {
    return call(
      provider.characterId,
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
  String? get name => r'pagesStateProvider';
}

/// See also [PagesState].
class PagesStateProvider
    extends AsyncNotifierProviderImpl<PagesState, PagesStateModel> {
  /// See also [PagesState].
  PagesStateProvider(
    String characterId,
  ) : this._internal(
          () => PagesState()..characterId = characterId,
          from: pagesStateProvider,
          name: r'pagesStateProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$pagesStateHash,
          dependencies: PagesStateFamily._dependencies,
          allTransitiveDependencies:
              PagesStateFamily._allTransitiveDependencies,
          characterId: characterId,
        );

  PagesStateProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.characterId,
  }) : super.internal();

  final String characterId;

  @override
  FutureOr<PagesStateModel> runNotifierBuild(
    covariant PagesState notifier,
  ) {
    return notifier.build(
      characterId,
    );
  }

  @override
  Override overrideWith(PagesState Function() create) {
    return ProviderOverride(
      origin: this,
      override: PagesStateProvider._internal(
        () => create()..characterId = characterId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        characterId: characterId,
      ),
    );
  }

  @override
  AsyncNotifierProviderElement<PagesState, PagesStateModel> createElement() {
    return _PagesStateProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PagesStateProvider && other.characterId == characterId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, characterId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PagesStateRef on AsyncNotifierProviderRef<PagesStateModel> {
  /// The parameter `characterId` of this provider.
  String get characterId;
}

class _PagesStateProviderElement
    extends AsyncNotifierProviderElement<PagesState, PagesStateModel>
    with PagesStateRef {
  _PagesStateProviderElement(super.provider);

  @override
  String get characterId => (origin as PagesStateProvider).characterId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
