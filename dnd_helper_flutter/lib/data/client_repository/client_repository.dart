import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'client_repository.g.dart';

const serverUrl = '146.66.198.47:5005';

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
  // log('json: $parametersString');
  final response = await post(
    Uri.http(serverUrl, path),
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
FutureOr<Response> sendGetRequest(
  Ref ref, {
  required String path,
  String? authKey,
}) async {
  // authKey ??= ref.read(authRepositoryProvider).value?.authKey;
  final response = await get(
    Uri.http(serverUrl, path),
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
