import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme.freezed.dart';
part 'theme.g.dart';

@Riverpod(keepAlive: true)
class Theme extends _$Theme {
  @override
  ThemeParameters build() {
    return const ThemeParameters();
  }
}

@freezed
class ThemeParameters with _$ThemeParameters {
  const factory ThemeParameters({
    @Default(true) bool isDark,
  }) = _ThemeParameters;
}
