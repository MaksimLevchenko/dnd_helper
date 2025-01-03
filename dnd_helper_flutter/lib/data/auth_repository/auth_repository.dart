import 'dart:developer';
import 'package:dnd_helper_flutter/data/client_repository/client_repository.dart';
import 'package:encrypt_shared_preferences/provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_repository.g.dart';

@Riverpod(keepAlive: true)
class AuthRepository extends _$AuthRepository {
  final _storage = EncryptedSharedPreferences.getInstance();

  @override
  FutureOr<AuthState> build() async {
    final email = _storage.getString('email');
    final password = _storage.getString('password');

    if (email == null || password == null) {
      return AuthState(isSuccess: false);
    }

    final response = await ref.read(sendPostRequestProvider(
      path: 'api/User/Login',
      parameters: {
        'email': email,
        'pass': password,
      },
    ).future);

    log('response.statusCode: ${response.statusCode}');

    if (response.statusCode == 200) {
      return AuthState(isSuccess: true, authKey: response.body);
    }

    return AuthState(
      isSuccess: false,
    );
  }

  Future<bool> signIn(String email, String password) async {
    // final response = await http.post(
    //   Uri.parse('$serverUrl/api/User/Login'),
    //   body: {
    //     'email': email,
    //     'pass': password,
    //   },
    // );

    try {
      final response = await ref.read(sendPostRequestProvider(
        path: 'api/User/Login',
        parameters: {
          'email': email,
          'pass': password,
        },
      ).future);

      if (response.statusCode == 200) {
        await _storage.setString('email', email);
        await _storage.setString('password', password);
        log('response.body: ${response.body}');
        state = AsyncData(AuthState(isSuccess: true, authKey: response.body));
        return true;
      } else {
        return false;
      }
    } on Exception catch (e) {
      log('Exception: $e');
      return false;
    }
  }

  Future<bool> signUp(String email, String password) async {
    // final response = await http.post(
    //   Uri.parse('$serverUrl/api/User/Register'),
    //   body: {
    //     'email': email,
    //     'pass': password,
    //   },
    // );
    try {
      final response = await ref.read(sendPostRequestProvider(
        path: 'api/User/Register',
        parameters: {
          'email': email,
          'pass': password,
          'username': email,
        },
      ).future);
      log('response: ${response.body}');
      log('response.statusCode: ${response.statusCode}');

      if (response.statusCode == 200) {
        await _storage.setString('email', email);
        await _storage.setString('password', password);
        state = AsyncData(AuthState(isSuccess: true, authKey: response.body));
        return true;
      } else {
        return false;
      }
    } on Exception catch (e) {
      log('Exception: $e');
      return false;
    }
  }

  Future<void> signOut() async {
    await _storage.remove('email');
    await _storage.remove('password');
    state = AsyncData(AuthState(
      isSuccess: false,
      authKey: null,
    ));
  }
}

class AuthState {
  final bool isSuccess;
  final String? authKey;

  AuthState({
    required this.isSuccess,
    this.authKey,
  });
}
