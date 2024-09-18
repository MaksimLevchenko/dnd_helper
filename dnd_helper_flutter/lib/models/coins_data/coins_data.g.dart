// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coins_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CoinsDataImpl _$$CoinsDataImplFromJson(Map<String, dynamic> json) =>
    _$CoinsDataImpl(
      platinum: (json['platinum'] as num?)?.toInt(),
      electrum: (json['electrum'] as num?)?.toInt(),
      golden: (json['golden'] as num?)?.toInt(),
      silver: (json['silver'] as num?)?.toInt(),
      copper: (json['copper'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CoinsDataImplToJson(_$CoinsDataImpl instance) =>
    <String, dynamic>{
      'platinum': instance.platinum,
      'electrum': instance.electrum,
      'golden': instance.golden,
      'silver': instance.silver,
      'copper': instance.copper,
    };
