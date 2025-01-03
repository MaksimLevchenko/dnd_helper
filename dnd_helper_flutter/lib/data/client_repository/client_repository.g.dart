// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$sendPostRequestHash() => r'8326d7a73e14b771e4435a32ae5482fbd5dc0201';

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

String _$sendPutRequestHash() => r'e57cd91ba6042b53e92c7857be1b3947c1c6476f';

/// See also [sendPutRequest].
@ProviderFor(sendPutRequest)
const sendPutRequestProvider = SendPutRequestFamily();

/// See also [sendPutRequest].
class SendPutRequestFamily extends Family<AsyncValue<Response>> {
  /// See also [sendPutRequest].
  const SendPutRequestFamily();

  /// See also [sendPutRequest].
  SendPutRequestProvider call({
    required String path,
    Map<String, dynamic>? parameters,
    String? parametersString,
    String? authKey,
  }) {
    return SendPutRequestProvider(
      path: path,
      parameters: parameters,
      parametersString: parametersString,
      authKey: authKey,
    );
  }

  @override
  SendPutRequestProvider getProviderOverride(
    covariant SendPutRequestProvider provider,
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
  String? get name => r'sendPutRequestProvider';
}

/// See also [sendPutRequest].
class SendPutRequestProvider extends AutoDisposeFutureProvider<Response> {
  /// See also [sendPutRequest].
  SendPutRequestProvider({
    required String path,
    Map<String, dynamic>? parameters,
    String? parametersString,
    String? authKey,
  }) : this._internal(
          (ref) => sendPutRequest(
            ref as SendPutRequestRef,
            path: path,
            parameters: parameters,
            parametersString: parametersString,
            authKey: authKey,
          ),
          from: sendPutRequestProvider,
          name: r'sendPutRequestProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$sendPutRequestHash,
          dependencies: SendPutRequestFamily._dependencies,
          allTransitiveDependencies:
              SendPutRequestFamily._allTransitiveDependencies,
          path: path,
          parameters: parameters,
          parametersString: parametersString,
          authKey: authKey,
        );

  SendPutRequestProvider._internal(
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
    FutureOr<Response> Function(SendPutRequestRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SendPutRequestProvider._internal(
        (ref) => create(ref as SendPutRequestRef),
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
    return _SendPutRequestProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SendPutRequestProvider &&
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

mixin SendPutRequestRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `path` of this provider.
  String get path;

  /// The parameter `parameters` of this provider.
  Map<String, dynamic>? get parameters;

  /// The parameter `parametersString` of this provider.
  String? get parametersString;

  /// The parameter `authKey` of this provider.
  String? get authKey;
}

class _SendPutRequestProviderElement
    extends AutoDisposeFutureProviderElement<Response> with SendPutRequestRef {
  _SendPutRequestProviderElement(super.provider);

  @override
  String get path => (origin as SendPutRequestProvider).path;
  @override
  Map<String, dynamic>? get parameters =>
      (origin as SendPutRequestProvider).parameters;
  @override
  String? get parametersString =>
      (origin as SendPutRequestProvider).parametersString;
  @override
  String? get authKey => (origin as SendPutRequestProvider).authKey;
}

String _$sendDeleteRequestHash() => r'e97331a09bf124f71bb9ffbc3686e110a960f730';

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
    required Map<String, dynamic> query,
    String? authKey,
  }) {
    return SendDeleteRequestProvider(
      path: path,
      query: query,
      authKey: authKey,
    );
  }

  @override
  SendDeleteRequestProvider getProviderOverride(
    covariant SendDeleteRequestProvider provider,
  ) {
    return call(
      path: provider.path,
      query: provider.query,
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
    required Map<String, dynamic> query,
    String? authKey,
  }) : this._internal(
          (ref) => sendDeleteRequest(
            ref as SendDeleteRequestRef,
            path: path,
            query: query,
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
          query: query,
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
    required this.query,
    required this.authKey,
  }) : super.internal();

  final String path;
  final Map<String, dynamic> query;
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
        query: query,
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
        other.query == query &&
        other.authKey == authKey;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, path.hashCode);
    hash = _SystemHash.combine(hash, query.hashCode);
    hash = _SystemHash.combine(hash, authKey.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SendDeleteRequestRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `path` of this provider.
  String get path;

  /// The parameter `query` of this provider.
  Map<String, dynamic> get query;

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
  Map<String, dynamic> get query => (origin as SendDeleteRequestProvider).query;
  @override
  String? get authKey => (origin as SendDeleteRequestProvider).authKey;
}

String _$sendGetRequestHash() => r'1e33afc75890b9560efd80995f70e306b014762f';

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
