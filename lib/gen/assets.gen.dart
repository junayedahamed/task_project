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

  /// File path: assets/icons/Rectangle 10.png
  AssetGenImage get rectangle10 =>
      const AssetGenImage('assets/icons/Rectangle 10.png');

  /// File path: assets/icons/Shape 1.svg
  String get shape1 => 'assets/icons/Shape 1.svg';

  /// File path: assets/icons/Shape 2.svg
  String get shape2 => 'assets/icons/Shape 2.svg';

  /// File path: assets/icons/app_bar_home.svg
  String get appBarHome => 'assets/icons/app_bar_home.svg';

  /// File path: assets/icons/bar.svg
  String get bar => 'assets/icons/bar.svg';

  /// File path: assets/icons/cart.svg
  String get cart => 'assets/icons/cart.svg';

  /// File path: assets/icons/dot.svg
  String get dot => 'assets/icons/dot.svg';

  /// File path: assets/icons/filter-svg.svg
  String get filterSvg => 'assets/icons/filter-svg.svg';

  /// File path: assets/icons/heart.svg
  String get heart => 'assets/icons/heart.svg';

  /// File path: assets/icons/home_nav_bar.svg
  String get homeNavBar => 'assets/icons/home_nav_bar.svg';

  /// File path: assets/icons/list_icon_nav.svg
  String get listIconNav => 'assets/icons/list_icon_nav.svg';

  /// File path: assets/icons/message_icon_nav.svg
  String get messageIconNav => 'assets/icons/message_icon_nav.svg';

  /// File path: assets/icons/notifications-outline.svg
  String get notificationsOutline => 'assets/icons/notifications-outline.svg';

  /// File path: assets/icons/person_icon_nav.svg
  String get personIconNav => 'assets/icons/person_icon_nav.svg';

  /// File path: assets/icons/shopping_icon_nav.svg
  String get shoppingIconNav => 'assets/icons/shopping_icon_nav.svg';

  /// File path: assets/icons/star.svg
  String get star => 'assets/icons/star.svg';

  /// List of all assets
  List<dynamic> get values => [
    rectangle10,
    shape1,
    shape2,
    appBarHome,
    bar,
    cart,
    dot,
    filterSvg,
    heart,
    homeNavBar,
    listIconNav,
    messageIconNav,
    notificationsOutline,
    personIconNav,
    shoppingIconNav,
    star,
  ];
}

class Assets {
  const Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size, this.flavors = const {}});

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
    FilterQuality filterQuality = FilterQuality.medium,
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

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
