// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_sheet_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$characterSheetStateHash() =>
    r'f9757fef339af2fbead73c339ec9f53f0f53c64f';

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

abstract class _$CharacterSheetState
    extends BuildlessAsyncNotifier<CharacterSheetParameters> {
  late final String characterId;

  FutureOr<CharacterSheetParameters> build(
    String characterId,
  );
}

/// See also [CharacterSheetState].
@ProviderFor(CharacterSheetState)
const characterSheetStateProvider = CharacterSheetStateFamily();

/// See also [CharacterSheetState].
class CharacterSheetStateFamily
    extends Family<AsyncValue<CharacterSheetParameters>> {
  /// See also [CharacterSheetState].
  const CharacterSheetStateFamily();

  /// See also [CharacterSheetState].
  CharacterSheetStateProvider call(
    String characterId,
  ) {
    return CharacterSheetStateProvider(
      characterId,
    );
  }

  @override
  CharacterSheetStateProvider getProviderOverride(
    covariant CharacterSheetStateProvider provider,
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
  String? get name => r'characterSheetStateProvider';
}

/// See also [CharacterSheetState].
class CharacterSheetStateProvider extends AsyncNotifierProviderImpl<
    CharacterSheetState, CharacterSheetParameters> {
  /// See also [CharacterSheetState].
  CharacterSheetStateProvider(
    String characterId,
  ) : this._internal(
          () => CharacterSheetState()..characterId = characterId,
          from: characterSheetStateProvider,
          name: r'characterSheetStateProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$characterSheetStateHash,
          dependencies: CharacterSheetStateFamily._dependencies,
          allTransitiveDependencies:
              CharacterSheetStateFamily._allTransitiveDependencies,
          characterId: characterId,
        );

  CharacterSheetStateProvider._internal(
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
  FutureOr<CharacterSheetParameters> runNotifierBuild(
    covariant CharacterSheetState notifier,
  ) {
    return notifier.build(
      characterId,
    );
  }

  @override
  Override overrideWith(CharacterSheetState Function() create) {
    return ProviderOverride(
      origin: this,
      override: CharacterSheetStateProvider._internal(
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
  AsyncNotifierProviderElement<CharacterSheetState, CharacterSheetParameters>
      createElement() {
    return _CharacterSheetStateProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CharacterSheetStateProvider &&
        other.characterId == characterId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, characterId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CharacterSheetStateRef
    on AsyncNotifierProviderRef<CharacterSheetParameters> {
  /// The parameter `characterId` of this provider.
  String get characterId;
}

class _CharacterSheetStateProviderElement extends AsyncNotifierProviderElement<
    CharacterSheetState, CharacterSheetParameters> with CharacterSheetStateRef {
  _CharacterSheetStateProviderElement(super.provider);

  @override
  String get characterId => (origin as CharacterSheetStateProvider).characterId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
