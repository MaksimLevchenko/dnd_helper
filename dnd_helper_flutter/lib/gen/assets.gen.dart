/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// Directory path: assets/icons/2x
  $AssetsIcons2xGen get a2x => const $AssetsIcons2xGen();

  /// Directory path: assets/icons/3x
  $AssetsIcons3xGen get a3x => const $AssetsIcons3xGen();

  /// File path: assets/icons/checkbox_96.png
  AssetGenImage get checkbox96 =>
      const AssetGenImage('assets/icons/checkbox_96.png');

  /// Directory path: assets/icons/class_icons
  $AssetsIconsClassIconsGen get classIcons => const $AssetsIconsClassIconsGen();

  /// File path: assets/icons/fight.png
  AssetGenImage get fight => const AssetGenImage('assets/icons/fight.png');

  /// File path: assets/icons/inventory.png
  AssetGenImage get inventory =>
      const AssetGenImage('assets/icons/inventory.png');

  /// File path: assets/icons/personal.png
  AssetGenImage get personal =>
      const AssetGenImage('assets/icons/personal.png');

  /// File path: assets/icons/rest.png
  AssetGenImage get rest => const AssetGenImage('assets/icons/rest.png');

  /// File path: assets/icons/rest_96.png
  AssetGenImage get rest96 => const AssetGenImage('assets/icons/rest_96.png');

  /// File path: assets/icons/rest_var2.png
  AssetGenImage get restVar2 =>
      const AssetGenImage('assets/icons/rest_var2.png');

  /// File path: assets/icons/rest_white.png
  AssetGenImage get restWhite =>
      const AssetGenImage('assets/icons/rest_white.png');

  /// File path: assets/icons/spells.png
  AssetGenImage get spells => const AssetGenImage('assets/icons/spells.png');

  /// File path: assets/icons/star_in_checkbox_96.png
  AssetGenImage get starInCheckbox96 =>
      const AssetGenImage('assets/icons/star_in_checkbox_96.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        checkbox96,
        fight,
        inventory,
        personal,
        rest,
        rest96,
        restVar2,
        restWhite,
        spells,
        starInCheckbox96
      ];
}

class $AssetsJsonsGen {
  const $AssetsJsonsGen();

  /// File path: assets/jsons/arms.json
  String get arms => 'assets/jsons/arms.json';

  /// File path: assets/jsons/backgrounds.json
  String get backgrounds => 'assets/jsons/backgrounds.json';

  /// File path: assets/jsons/classes.json
  String get classes => 'assets/jsons/classes.json';

  /// File path: assets/jsons/races.json
  String get races => 'assets/jsons/races.json';

  /// List of all assets
  List<String> get values => [arms, backgrounds, classes, races];
}

class $AssetsIcons2xGen {
  const $AssetsIcons2xGen();

  /// File path: assets/icons/2x/rest_2x.png
  AssetGenImage get rest2x =>
      const AssetGenImage('assets/icons/2x/rest_2x.png');

  /// List of all assets
  List<AssetGenImage> get values => [rest2x];
}

class $AssetsIcons3xGen {
  const $AssetsIcons3xGen();

  /// File path: assets/icons/3x/rest_3x.png
  AssetGenImage get rest3x =>
      const AssetGenImage('assets/icons/3x/rest_3x.png');

  /// List of all assets
  List<AssetGenImage> get values => [rest3x];
}

class $AssetsIconsClassIconsGen {
  const $AssetsIconsClassIconsGen();

  /// File path: assets/icons/class_icons/barbarian.png
  AssetGenImage get barbarian =>
      const AssetGenImage('assets/icons/class_icons/barbarian.png');

  /// File path: assets/icons/class_icons/bard.png
  AssetGenImage get bard =>
      const AssetGenImage('assets/icons/class_icons/bard.png');

  /// File path: assets/icons/class_icons/cleric.png
  AssetGenImage get cleric =>
      const AssetGenImage('assets/icons/class_icons/cleric.png');

  /// File path: assets/icons/class_icons/druid.png
  AssetGenImage get druid =>
      const AssetGenImage('assets/icons/class_icons/druid.png');

  /// File path: assets/icons/class_icons/fighter.png
  AssetGenImage get fighter =>
      const AssetGenImage('assets/icons/class_icons/fighter.png');

  /// File path: assets/icons/class_icons/monk.png
  AssetGenImage get monk =>
      const AssetGenImage('assets/icons/class_icons/monk.png');

  /// File path: assets/icons/class_icons/paladin.png
  AssetGenImage get paladin =>
      const AssetGenImage('assets/icons/class_icons/paladin.png');

  /// File path: assets/icons/class_icons/ranger.png
  AssetGenImage get ranger =>
      const AssetGenImage('assets/icons/class_icons/ranger.png');

  /// File path: assets/icons/class_icons/rogue.png
  AssetGenImage get rogue =>
      const AssetGenImage('assets/icons/class_icons/rogue.png');

  /// File path: assets/icons/class_icons/sorcerer.png
  AssetGenImage get sorcerer =>
      const AssetGenImage('assets/icons/class_icons/sorcerer.png');

  /// File path: assets/icons/class_icons/warlock.png
  AssetGenImage get warlock =>
      const AssetGenImage('assets/icons/class_icons/warlock.png');

  /// File path: assets/icons/class_icons/wizard.png
  AssetGenImage get wizard =>
      const AssetGenImage('assets/icons/class_icons/wizard.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        barbarian,
        bard,
        cleric,
        druid,
        fighter,
        monk,
        paladin,
        ranger,
        rogue,
        sorcerer,
        warlock,
        wizard
      ];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsJsonsGen jsons = $AssetsJsonsGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
