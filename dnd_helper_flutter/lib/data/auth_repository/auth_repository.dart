import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_repository.freezed.dart';
part 'auth_repository.g.dart';

@Riverpod(keepAlive: true)
class AuthRepository extends _$AuthRepository {
  @override
  FutureOr<AuthState> build() {
    return AuthState(isSuccess: true);
  }
}

@freezed
class AuthState with _$AuthState {
  factory AuthState({required bool isSuccess}) = _AuthState;

  factory AuthState.fromJson(Map<String, dynamic> json) =>
      _$AuthStateFromJson(json);
}
