import 'package:flutter/material.dart';

import '../../../gen/assets.gen.dart';

extension AssetsExt on Assets {
  static final Map<String, AssetGenImage> _svgIconMap = <String, AssetGenImage>{
    '01d': Assets.icons.png.a01d,
    '01n': Assets.icons.png.a01n,
    '02d': Assets.icons.png.a02d,
    '02n': Assets.icons.png.a02n,
    '03d': Assets.icons.png.a03d,
    '03n': Assets.icons.png.a03n,
    '04d': Assets.icons.png.a04d,
    '04n': Assets.icons.png.a04n,
    '05d': Assets.icons.png.a05d,
    '05n': Assets.icons.png.a05n,
    '10d_500': Assets.icons.png.a10d500,
    '10n_500': Assets.icons.png.a10n500,
    '10d_501': Assets.icons.png.a10d501,
    '10n_501': Assets.icons.png.a10n501,
    '10d_502': Assets.icons.png.a10d502,
    '10n_502': Assets.icons.png.a10n502,
    '11d': Assets.icons.png.a11d,
    '11n': Assets.icons.png.a11n,
    '13d': Assets.icons.png.a13d,
    '13n': Assets.icons.png.a13n,
    '13d_511': Assets.icons.png.a13d511,
    '13n_511': Assets.icons.png.a13n511,
    '50d': Assets.icons.png.a50d,
    '50n': Assets.icons.png.a50n,
  };

  /// Returns the SVG asset with the given [name].
  // static SvgGenImage svgName(String? name, int? code) =>
  //     SvgGenImage('assets/icons/svg/${_splitCode(name, code)}.svg');

  /// See .document/openweather_doc.md for more details.
  static String _splitCode(String? name, int? code) {
    if (name == null) {
      return '10d';
    }
    final String nameCode = name.substring(0, 2);
    if (code == null || nameCode != '10' && nameCode != '13') {
      return name;
    } else if (nameCode == '10') {
      return '$name' '_${code > 502 ? 502 : code}';
    } else {
      return '$name' '${code < 600 ? '_$code' : ''}';
    }
  }

  static Widget svgName(String? iconCode, int? weatherId) {
    final String key = _splitCode(iconCode, weatherId);

    return (_svgIconMap[key] ?? Assets.icons.png.a01d).image(
      width: 80,
      height: 80,
    );
  }
}
