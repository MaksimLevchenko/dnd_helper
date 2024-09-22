import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_repository.freezed.dart';
part 'auth_repository.g.dart';

@Riverpod(keepAlive: true)
class AuthRepository extends _$AuthRepository {
  @override
  FutureOr<AuthState> build() {
    //final responce = client.authEndpoint.login();
    return AuthState(isSuccess: true);
  }
}

class AuthState with _$AuthState {
  final bool isSuccess;

  AuthState({required this.isSuccess});
}
