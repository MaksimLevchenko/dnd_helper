import 'package:dnd_helper_flutter/data/auth_repository/auth_repository.dart';
import 'package:dnd_helper_flutter/main.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'client_repository.g.dart';

@riverpod
FutureOr<Response> sendPostRequest(
  Ref ref, {
  required String path,
  Map<String, Object>? parameters,
  String? authKey,
}) async {
  final parametersString = parameters?.entries
      .map((entry) => '"${entry.key}": "${entry.value}"')
      .join(',');
  final response = await post(
    Uri.http(serverUrl, path),
    body: '''
{
  $parametersString
}
''',
    headers: {
      'User-Agent':
          'Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101 Firefox/78.0',
      'Connection': 'keep-alive',
      'Accept': '*/*',
      'Content-Type': 'application/json',
      'auth': authKey ?? '',
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
  final response = await get(
    Uri.http(serverUrl, path),
    headers: {
      'User-Agent':
          'Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101 Firefox/78.0',
      'Connection': 'keep-alive',
      'Accept': '*/*',
      'Content-Type': 'application/json',
      'auth': authKey ?? '',
    },
  );

  return response;
}
