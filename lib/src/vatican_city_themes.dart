import 'package:flutter/widgets.dart' show Color;
import 'package:plate_core/plate_core.dart';

import 'vatican_city_colors.dart';

/// Black or red ink on the pale grey field. The artwork's light bevel frame
/// is drawn as a thin ink frame; its 2% width and 5% corner radius are
/// estimates.
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
