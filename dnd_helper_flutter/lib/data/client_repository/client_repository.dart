import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'client_repository.g.dart';

// const _serverUrl = '146.66.198.47:5005';
const _serverUrl = 'dnd-grokes.amvera.io';
Uri _parceUri({required String path, Map<String, dynamic>? parameters}) =>
    Uri.https(
      _serverUrl,
      path,
      parameters,
    );

@riverpod
FutureOr<Response> sendPostRequest(
  Ref ref, {
  required String path,
  Map<String, dynamic>? parameters,
  String? parametersString,
  String? authKey,
}) async {
  // authKey ??= ref.read(authRepositoryProvider).value?.authKey;
  parametersString ??=
      '{${parameters?.entries.map((entry) => '"${entry.key}": "${entry.value}"').join(',')}}';
  if (parametersString == '{}') {
    throw Exception('No parameters');
  }
  log('json: $parametersString');
  final response = await post(
    _parceUri(path: path),
    body: '''
  $parametersString
''',
    headers: {
      'Accept-Language': 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7,und;q=0.6',
      'Content-Type': 'application/json',
      'accept': '*/*',
      if (authKey != null) 'auth': authKey,
    },
  );

  return response;
}

@riverpod
FutureOr<Response> sendPutRequest(
  Ref ref, {
  required String path,
  Map<String, dynamic>? parameters,
  String? parametersString,
  String? authKey,
}) async {
  // authKey ??= ref.read(authRepositoryProvider).value?.authKey;
  parametersString ??=
      '{${parameters?.entries.map((entry) => '"${entry.key}": "${entry.value}"').join(',')}}';
  if (parametersString == '{}') {
    throw Exception('No parameters');
  }
  final response = await put(
    _parceUri(path: path),
    body: '''
  $parametersString
''',
    headers: {
      'Accept-Language': 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7,und;q=0.6',
      'Content-Type': 'application/json',
      'accept': '*/*',
      if (authKey != null) 'auth': authKey,
    },
  );

  return response;
}

@riverpod
FutureOr<Response> sendDeleteRequest(
  Ref ref, {
  required String path,
  required Map<String, dynamic> query,
  String? authKey,
}) async {
  // authKey ??= ref.read(authRepositoryProvider).value?.authKey;
  if (query.isEmpty) {
    throw Exception('No parameters');
  }
  final response = await delete(
    _parceUri(path: path, parameters: query),
    headers: {
      'User-Agent':
          'Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101 Firefox/78.0',
      'Connection': 'keep-alive',
      'Accept': '*/*',
      'Content-Type': 'application/json',
      if (authKey != null) 'auth': authKey,
    },
  );
  log('response: ${response.body}, ${response.statusCode}, ${response.reasonPhrase}');

  return response;
}

@riverpod
FutureOr<Response> sendGetRequest(
  Ref ref, {
  required String path,
  String? authKey,
}) async {
  // authKey ??= ref.read(authRepositoryProvider).value?.authKey;
  final response = await get(
    _parceUri(path: path),
    headers: {
      'User-Agent':
          'Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101 Firefox/78.0',
      'Connection': 'keep-alive',
      'Accept': '*/*',
      'Content-Type': 'application/json',
      if (authKey != null) 'auth': authKey,
    },
  );

  return response;
}
