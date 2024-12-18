// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$sendPostRequestHash() => r'1cb24834fc5d1fc2f37294746641b75bd3e443a4';

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

/// See also [sendPostRequest].
@ProviderFor(sendPostRequest)
const sendPostRequestProvider = SendPostRequestFamily();

/// See also [sendPostRequest].
class SendPostRequestFamily extends Family<AsyncValue<Response>> {
  /// See also [sendPostRequest].
  const SendPostRequestFamily();

  /// See also [sendPostRequest].
  SendPostRequestProvider call({
    required String path,
    Map<String, Object>? parameters,
    String? authKey,
  }) {
    return SendPostRequestProvider(
      path: path,
      parameters: parameters,
      authKey: authKey,
    );
  }

  @override
  SendPostRequestProvider getProviderOverride(
    covariant SendPostRequestProvider provider,
  ) {
    return call(
      path: provider.path,
      parameters: provider.parameters,
      authKey: provider.authKey,
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
  String? get name => r'sendPostRequestProvider';
}

/// See also [sendPostRequest].
class SendPostRequestProvider extends AutoDisposeFutureProvider<Response> {
  /// See also [sendPostRequest].
  SendPostRequestProvider({
    required String path,
    Map<String, Object>? parameters,
    String? authKey,
  }) : this._internal(
          (ref) => sendPostRequest(
            ref as SendPostRequestRef,
            path: path,
            parameters: parameters,
            authKey: authKey,
          ),
          from: sendPostRequestProvider,
          name: r'sendPostRequestProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$sendPostRequestHash,
          dependencies: SendPostRequestFamily._dependencies,
          allTransitiveDependencies:
              SendPostRequestFamily._allTransitiveDependencies,
          path: path,
          parameters: parameters,
          authKey: authKey,
        );

  SendPostRequestProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.path,
    required this.parameters,
    required this.authKey,
  }) : super.internal();

  final String path;
  final Map<String, Object>? parameters;
  final String? authKey;

  @override
  Override overrideWith(
    FutureOr<Response> Function(SendPostRequestRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SendPostRequestProvider._internal(
        (ref) => create(ref as SendPostRequestRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        path: path,
        parameters: parameters,
        authKey: authKey,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _SendPostRequestProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SendPostRequestProvider &&
        other.path == path &&
        other.parameters == parameters &&
        other.authKey == authKey;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, path.hashCode);
    hash = _SystemHash.combine(hash, parameters.hashCode);
    hash = _SystemHash.combine(hash, authKey.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SendPostRequestRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `path` of this provider.
  String get path;

  /// The parameter `parameters` of this provider.
  Map<String, Object>? get parameters;

  /// The parameter `authKey` of this provider.
  String? get authKey;
}

class _SendPostRequestProviderElement
    extends AutoDisposeFutureProviderElement<Response> with SendPostRequestRef {
  _SendPostRequestProviderElement(super.provider);

  @override
  String get path => (origin as SendPostRequestProvider).path;
  @override
  Map<String, Object>? get parameters =>
      (origin as SendPostRequestProvider).parameters;
  @override
  String? get authKey => (origin as SendPostRequestProvider).authKey;
}

String _$sendGetRequestHash() => r'fe02a9749950b5af74d95be3bbebc3304611bf9d';

/// See also [sendGetRequest].
@ProviderFor(sendGetRequest)
const sendGetRequestProvider = SendGetRequestFamily();

/// See also [sendGetRequest].
class SendGetRequestFamily extends Family<AsyncValue<Response>> {
  /// See also [sendGetRequest].
  const SendGetRequestFamily();

  /// See also [sendGetRequest].
  SendGetRequestProvider call({
    required String path,
    String? authKey,
  }) {
    return SendGetRequestProvider(
      path: path,
      authKey: authKey,
    );
  }

  @override
  SendGetRequestProvider getProviderOverride(
    covariant SendGetRequestProvider provider,
  ) {
    return call(
      path: provider.path,
      authKey: provider.authKey,
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
  String? get name => r'sendGetRequestProvider';
}

/// See also [sendGetRequest].
class SendGetRequestProvider extends AutoDisposeFutureProvider<Response> {
  /// See also [sendGetRequest].
  SendGetRequestProvider({
    required String path,
    String? authKey,
  }) : this._internal(
          (ref) => sendGetRequest(
            ref as SendGetRequestRef,
            path: path,
            authKey: authKey,
          ),
          from: sendGetRequestProvider,
          name: r'sendGetRequestProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$sendGetRequestHash,
          dependencies: SendGetRequestFamily._dependencies,
          allTransitiveDependencies:
              SendGetRequestFamily._allTransitiveDependencies,
          path: path,
          authKey: authKey,
        );

  SendGetRequestProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.path,
    required this.authKey,
  }) : super.internal();

  final String path;
  final String? authKey;

  @override
  Override overrideWith(
    FutureOr<Response> Function(SendGetRequestRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SendGetRequestProvider._internal(
        (ref) => create(ref as SendGetRequestRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        path: path,
        authKey: authKey,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _SendGetRequestProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SendGetRequestProvider &&
        other.path == path &&
        other.authKey == authKey;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, path.hashCode);
    hash = _SystemHash.combine(hash, authKey.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SendGetRequestRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `path` of this provider.
  String get path;

  /// The parameter `authKey` of this provider.
  String? get authKey;
}

class _SendGetRequestProviderElement
    extends AutoDisposeFutureProviderElement<Response> with SendGetRequestRef {
  _SendGetRequestProviderElement(super.provider);

  @override
  String get path => (origin as SendGetRequestProvider).path;
  @override
  String? get authKey => (origin as SendGetRequestProvider).authKey;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
