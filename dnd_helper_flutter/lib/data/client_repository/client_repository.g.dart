// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$sendPostRequestHash() => r'ec2519fcdec7a198465e5433751894f0d2f993c3';

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
    Map<String, dynamic>? parameters,
    String? parametersString,
    String? authKey,
  }) {
    return SendPostRequestProvider(
      path: path,
      parameters: parameters,
      parametersString: parametersString,
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
      parametersString: provider.parametersString,
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
    Map<String, dynamic>? parameters,
    String? parametersString,
    String? authKey,
  }) : this._internal(
          (ref) => sendPostRequest(
            ref as SendPostRequestRef,
            path: path,
            parameters: parameters,
            parametersString: parametersString,
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
          parametersString: parametersString,
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
    required this.parametersString,
    required this.authKey,
  }) : super.internal();

  final String path;
  final Map<String, dynamic>? parameters;
  final String? parametersString;
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
        parametersString: parametersString,
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
        other.parametersString == parametersString &&
        other.authKey == authKey;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, path.hashCode);
    hash = _SystemHash.combine(hash, parameters.hashCode);
    hash = _SystemHash.combine(hash, parametersString.hashCode);
    hash = _SystemHash.combine(hash, authKey.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SendPostRequestRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `path` of this provider.
  String get path;

  /// The parameter `parameters` of this provider.
  Map<String, dynamic>? get parameters;

  /// The parameter `parametersString` of this provider.
  String? get parametersString;

  /// The parameter `authKey` of this provider.
  String? get authKey;
}

class _SendPostRequestProviderElement
    extends AutoDisposeFutureProviderElement<Response> with SendPostRequestRef {
  _SendPostRequestProviderElement(super.provider);

  @override
  String get path => (origin as SendPostRequestProvider).path;
  @override
  Map<String, dynamic>? get parameters =>
      (origin as SendPostRequestProvider).parameters;
  @override
  String? get parametersString =>
      (origin as SendPostRequestProvider).parametersString;
  @override
  String? get authKey => (origin as SendPostRequestProvider).authKey;
}

String _$sendDeleteRequestHash() => r'13321fb4a91ae7bba5cfc817b4e6eb1e7409917a';

/// See also [sendDeleteRequest].
@ProviderFor(sendDeleteRequest)
const sendDeleteRequestProvider = SendDeleteRequestFamily();

/// See also [sendDeleteRequest].
class SendDeleteRequestFamily extends Family<AsyncValue<Response>> {
  /// See also [sendDeleteRequest].
  const SendDeleteRequestFamily();

  /// See also [sendDeleteRequest].
  SendDeleteRequestProvider call({
    required String path,
    Map<String, dynamic>? parameters,
    String? parametersString,
    String? authKey,
  }) {
    return SendDeleteRequestProvider(
      path: path,
      parameters: parameters,
      parametersString: parametersString,
      authKey: authKey,
    );
  }

  @override
  SendDeleteRequestProvider getProviderOverride(
    covariant SendDeleteRequestProvider provider,
  ) {
    return call(
      path: provider.path,
      parameters: provider.parameters,
      parametersString: provider.parametersString,
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
  String? get name => r'sendDeleteRequestProvider';
}

/// See also [sendDeleteRequest].
class SendDeleteRequestProvider extends AutoDisposeFutureProvider<Response> {
  /// See also [sendDeleteRequest].
  SendDeleteRequestProvider({
    required String path,
    Map<String, dynamic>? parameters,
    String? parametersString,
    String? authKey,
  }) : this._internal(
          (ref) => sendDeleteRequest(
            ref as SendDeleteRequestRef,
            path: path,
            parameters: parameters,
            parametersString: parametersString,
            authKey: authKey,
          ),
          from: sendDeleteRequestProvider,
          name: r'sendDeleteRequestProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$sendDeleteRequestHash,
          dependencies: SendDeleteRequestFamily._dependencies,
          allTransitiveDependencies:
              SendDeleteRequestFamily._allTransitiveDependencies,
          path: path,
          parameters: parameters,
          parametersString: parametersString,
          authKey: authKey,
        );

  SendDeleteRequestProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.path,
    required this.parameters,
    required this.parametersString,
    required this.authKey,
  }) : super.internal();

  final String path;
  final Map<String, dynamic>? parameters;
  final String? parametersString;
  final String? authKey;

  @override
  Override overrideWith(
    FutureOr<Response> Function(SendDeleteRequestRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SendDeleteRequestProvider._internal(
        (ref) => create(ref as SendDeleteRequestRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        path: path,
        parameters: parameters,
        parametersString: parametersString,
        authKey: authKey,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _SendDeleteRequestProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SendDeleteRequestProvider &&
        other.path == path &&
        other.parameters == parameters &&
        other.parametersString == parametersString &&
        other.authKey == authKey;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, path.hashCode);
    hash = _SystemHash.combine(hash, parameters.hashCode);
    hash = _SystemHash.combine(hash, parametersString.hashCode);
    hash = _SystemHash.combine(hash, authKey.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SendDeleteRequestRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `path` of this provider.
  String get path;

  /// The parameter `parameters` of this provider.
  Map<String, dynamic>? get parameters;

  /// The parameter `parametersString` of this provider.
  String? get parametersString;

  /// The parameter `authKey` of this provider.
  String? get authKey;
}

class _SendDeleteRequestProviderElement
    extends AutoDisposeFutureProviderElement<Response>
    with SendDeleteRequestRef {
  _SendDeleteRequestProviderElement(super.provider);

  @override
  String get path => (origin as SendDeleteRequestProvider).path;
  @override
  Map<String, dynamic>? get parameters =>
      (origin as SendDeleteRequestProvider).parameters;
  @override
  String? get parametersString =>
      (origin as SendDeleteRequestProvider).parametersString;
  @override
  String? get authKey => (origin as SendDeleteRequestProvider).authKey;
}

String _$sendGetRequestHash() => r'cad1deea1e3bd2b0084661acd72c45c77d5531e7';

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
