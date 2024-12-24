// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'widgets_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$widgetsStateHash() => r'3105f680342371a2e839b43f98dab50dafb99243';

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

abstract class _$WidgetsState
    extends BuildlessAutoDisposeNotifier<WidgetsStateParameters> {
  late final String characterId;

  WidgetsStateParameters build(
    String characterId,
  );
}

/// See also [WidgetsState].
@ProviderFor(WidgetsState)
const widgetsStateProvider = WidgetsStateFamily();

/// See also [WidgetsState].
class WidgetsStateFamily extends Family<WidgetsStateParameters> {
  /// See also [WidgetsState].
  const WidgetsStateFamily();

  /// See also [WidgetsState].
  WidgetsStateProvider call(
    String characterId,
  ) {
    return WidgetsStateProvider(
      characterId,
    );
  }

  @override
  WidgetsStateProvider getProviderOverride(
    covariant WidgetsStateProvider provider,
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
  String? get name => r'widgetsStateProvider';
}

/// See also [WidgetsState].
class WidgetsStateProvider extends AutoDisposeNotifierProviderImpl<WidgetsState,
    WidgetsStateParameters> {
  /// See also [WidgetsState].
  WidgetsStateProvider(
    String characterId,
  ) : this._internal(
          () => WidgetsState()..characterId = characterId,
          from: widgetsStateProvider,
          name: r'widgetsStateProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$widgetsStateHash,
          dependencies: WidgetsStateFamily._dependencies,
          allTransitiveDependencies:
              WidgetsStateFamily._allTransitiveDependencies,
          characterId: characterId,
        );

  WidgetsStateProvider._internal(
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
  WidgetsStateParameters runNotifierBuild(
    covariant WidgetsState notifier,
  ) {
    return notifier.build(
      characterId,
    );
  }

  @override
  Override overrideWith(WidgetsState Function() create) {
    return ProviderOverride(
      origin: this,
      override: WidgetsStateProvider._internal(
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
  AutoDisposeNotifierProviderElement<WidgetsState, WidgetsStateParameters>
      createElement() {
    return _WidgetsStateProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is WidgetsStateProvider && other.characterId == characterId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, characterId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin WidgetsStateRef
    on AutoDisposeNotifierProviderRef<WidgetsStateParameters> {
  /// The parameter `characterId` of this provider.
  String get characterId;
}

class _WidgetsStateProviderElement extends AutoDisposeNotifierProviderElement<
    WidgetsState, WidgetsStateParameters> with WidgetsStateRef {
  _WidgetsStateProviderElement(super.provider);

  @override
  String get characterId => (origin as WidgetsStateProvider).characterId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
