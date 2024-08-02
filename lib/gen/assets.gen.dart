/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class Assets {
  Assets._();

  static const AssetGenImage appointment =
      AssetGenImage('assets/appointment.png');
  static const AssetGenImage avatar = AssetGenImage('assets/avatar.png');
  static const AssetGenImage calendar = AssetGenImage('assets/calendar.png');
  static const AssetGenImage download1 = AssetGenImage('assets/download 1.jpg');
  static const AssetGenImage download2 = AssetGenImage('assets/download 2.jpg');
  static const AssetGenImage download3 = AssetGenImage('assets/download 3.jpg');
  static const AssetGenImage download4 = AssetGenImage('assets/download 4.jpg');
  static const AssetGenImage download5 = AssetGenImage('assets/download 5.jpg');
  static const AssetGenImage drink = AssetGenImage('assets/drink.png');
  static const AssetGenImage drug = AssetGenImage('assets/drug.png');
  static const AssetGenImage ellipse206 =
      AssetGenImage('assets/ellipse 206.png');
  static const AssetGenImage frame194 = AssetGenImage('assets/frame 194.png');
  static const AssetGenImage frame195 = AssetGenImage('assets/frame 195.png');
  static const AssetGenImage frame196 = AssetGenImage('assets/frame 196.png');
  static const AssetGenImage frame197 = AssetGenImage('assets/frame 197.png');
  static const AssetGenImage health = AssetGenImage('assets/health.png');
  static const AssetGenImage image1 = AssetGenImage('assets/image 1.png');
  static const AssetGenImage image2 = AssetGenImage('assets/image 2.png');
  static const AssetGenImage image3 = AssetGenImage('assets/image 3.png');
  static const AssetGenImage image4 = AssetGenImage('assets/image 4.png');
  static const AssetGenImage image6 = AssetGenImage('assets/image 6.png');
  static const AssetGenImage image8 = AssetGenImage('assets/image 8.png');
  static const AssetGenImage mindfulPng = AssetGenImage('assets/mindful.png');
  static const AssetGenImage mindfulWebp = AssetGenImage('assets/mindful.webp');
  static const AssetGenImage nurse = AssetGenImage('assets/nurse.png');
  static const AssetGenImage p11 = AssetGenImage('assets/p11.jpg');
  static const AssetGenImage p12 = AssetGenImage('assets/p12.jpeg');
  static const AssetGenImage people = AssetGenImage('assets/people.png');
  static const AssetGenImage pi1 = AssetGenImage('assets/pi1.jpg');
  static const AssetGenImage pi10 = AssetGenImage('assets/pi10.webp');
  static const AssetGenImage pi3 = AssetGenImage('assets/pi3.jpg');
  static const AssetGenImage pi4 = AssetGenImage('assets/pi4.jpg');
  static const AssetGenImage pi5 = AssetGenImage('assets/pi5.jpg');
  static const AssetGenImage pi9 = AssetGenImage('assets/pi9.jpg');
  static const AssetGenImage plate = AssetGenImage('assets/plate.png');
  static const AssetGenImage shop = AssetGenImage('assets/shop.png');
  static const AssetGenImage sliders = AssetGenImage('assets/sliders.png');
  static const AssetGenImage splashScreen =
      AssetGenImage('assets/splash screen.png');
  static const AssetGenImage stars = AssetGenImage('assets/stars.png');
  static const AssetGenImage statistics =
      AssetGenImage('assets/statistics.png');
  static const AssetGenImage success = AssetGenImage('assets/success.png');
  static const AssetGenImage target = AssetGenImage('assets/target.png');
  static const AssetGenImage therapists =
      AssetGenImage('assets/therapists.png');
  static const AssetGenImage verify = AssetGenImage('assets/verify.png');
  static const AssetGenImage watch = AssetGenImage('assets/watch.png');

  /// List of all assets
  static List<AssetGenImage> get values => [
        appointment,
        avatar,
        calendar,
        download1,
        download2,
        download3,
        download4,
        download5,
        drink,
        drug,
        ellipse206,
        frame194,
        frame195,
        frame196,
        frame197,
        health,
        image1,
        image2,
        image3,
        image4,
        image6,
        image8,
        mindfulPng,
        mindfulWebp,
        nurse,
        p11,
        p12,
        people,
        pi1,
        pi10,
        pi3,
        pi4,
        pi5,
        pi9,
        plate,
        shop,
        sliders,
        splashScreen,
        stars,
        statistics,
        success,
        target,
        therapists,
        verify,
        watch
      ];
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size = null});

  final String _assetName;

  final Size? size;

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
    bool gaplessPlayback = false,
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
