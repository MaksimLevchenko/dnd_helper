import 'package:freezed_annotation/freezed_annotation.dart';

part 'coins_data.freezed.dart';
part 'coins_data.g.dart';

@freezed
class CoinsData with _$CoinsData {
  const factory CoinsData({
    int? platinum,
    int? electrum,
    int? golden,
    int? silver,
    int? copper,
  }) = _CoinsData;

  factory CoinsData.fromJson(Map<String, dynamic> json) =>
      _$CoinsDataFromJson(json);
}
