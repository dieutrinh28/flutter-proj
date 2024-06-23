import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PackageUtil {
  const PackageUtil._();

  static SvgPicture createSvgFromAsset(
    String assetName, {
    Key? key,
    matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    fit = BoxFit.contain,
    alignment = Alignment.center,
    allowDrawingOutsideViewBox = false,
    placeholderBuilder,
    semanticsLabel,
    excludeFromSemantics = false,
    clipBehavior = Clip.hardEdge,
    theme = const SvgTheme(),
    ColorFilter? colorFilter,
  }) {
    return SvgPicture.asset(
      assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      clipBehavior: clipBehavior,
      theme: theme,
      colorFilter: colorFilter,
    );
  }
}
