// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_character.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getCharacterHash() => r'1f34d51ca7513c1df798bd2f79c935d7a56ea991';

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

/// See also [getCharacter].
@ProviderFor(getCharacter)
const getCharacterProvider = GetCharacterFamily();

/// See also [getCharacter].
class GetCharacterFamily extends Family<AsyncValue<CharacterData?>> {
  /// See also [getCharacter].
  const GetCharacterFamily();

  /// See also [getCharacter].
  GetCharacterProvider call({
    required String id,
  }) {
    return GetCharacterProvider(
      id: id,
    );
  }

  @override
  GetCharacterProvider getProviderOverride(
    covariant GetCharacterProvider provider,
  ) {
    return call(
      id: provider.id,
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
  String? get name => r'getCharacterProvider';
}

/// See also [getCharacter].
class GetCharacterProvider extends FutureProvider<CharacterData?> {
  /// See also [getCharacter].
  GetCharacterProvider({
    required String id,
  }) : this._internal(
          (ref) => getCharacter(
            ref as GetCharacterRef,
            id: id,
          ),
          from: getCharacterProvider,
          name: r'getCharacterProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getCharacterHash,
          dependencies: GetCharacterFamily._dependencies,
          allTransitiveDependencies:
              GetCharacterFamily._allTransitiveDependencies,
          id: id,
        );

  GetCharacterProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  Override overrideWith(
    FutureOr<CharacterData?> Function(GetCharacterRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetCharacterProvider._internal(
        (ref) => create(ref as GetCharacterRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  FutureProviderElement<CharacterData?> createElement() {
    return _GetCharacterProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetCharacterProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetCharacterRef on FutureProviderRef<CharacterData?> {
  /// The parameter `id` of this provider.
  String get id;
}

class _GetCharacterProviderElement extends FutureProviderElement<CharacterData?>
    with GetCharacterRef {
  _GetCharacterProviderElement(super.provider);

  @override
  String get id => (origin as GetCharacterProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
