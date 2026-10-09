import 'package:flutter/widgets.dart' show Color;

import 'package:plate_core/plate_core.dart';

import 'vatican_city_colors.dart';

/// Black or red ink on the pale grey field. The frame is a light bevel in the
/// artwork (white outside, `EBEBEB`, `CBCFCF` inwards over about 8 of 350
/// px); it is drawn here as a thin ink frame of 2% of the height with a
/// corner radius estimated at 5%, not measured.
abstract final class VaticanCityThemes {
  static final PlateTheme private = _theme(VaticanCityColors.black);
  static final PlateTheme official = _theme(VaticanCityColors.black);
  static final PlateTheme papal = _theme(VaticanCityColors.red);
  static final PlateTheme government = _theme(VaticanCityColors.red);
}

PlateTheme _theme(Color ink) => PlateTheme.monochrome(
  field: VaticanCityColors.field,
  ink: ink,
  inactive: VaticanCityColors.inactive,
  borderWidthRatio: 0.02,
  plateRadiusRatio: 0.05,
);
