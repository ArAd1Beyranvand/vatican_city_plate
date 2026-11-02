import 'package:plate_core/plate_core.dart';

import 'vatican_city_colors.dart';

/// Vatican City as a `PlateCountry`. The plates carry no flag, band or
/// country code, so there is no panel.
abstract final class VaticanCityCountry {
  static const PlateCountry vatican_city = PlateCountry(
    code: 'va',
    captionLines: <String>[],
    panelColor: VaticanCityColors.black,
    panelTextColor: VaticanCityColors.field,
  );
}
