// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_sheet_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CharacterSheetParametersImpl _$$CharacterSheetParametersImplFromJson(
        Map<String, dynamic> json) =>
    _$CharacterSheetParametersImpl(
      characterData: json['characterData'] == null
          ? null
          : CharacterData.fromJson(
              json['characterData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CharacterSheetParametersImplToJson(
        _$CharacterSheetParametersImpl instance) =>
    <String, dynamic>{
      'characterData': instance.characterData,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$characterSheetStateHash() =>
    r'5904e00e5b04f87dfed362144943c6e287ba8ff9';

/// See also [CharacterSheetState].
@ProviderFor(CharacterSheetState)
final characterSheetStateProvider =
    AsyncNotifierProvider<CharacterSheetState, CharacterData>.internal(
  CharacterSheetState.new,
  name: r'characterSheetStateProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$characterSheetStateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$CharacterSheetState = AsyncNotifier<CharacterData>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
