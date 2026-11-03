import 'package:plate_core/testing.dart';
import 'package:vatican_city_plate/vatican_city_plate.dart';

void main() {
  plateGoldens('va', VaticanCityCountry.vatican_city, <String, PlateGoldenCase>{
    'private': (
      VaticanCityPlates.private,
      VaticanCityThemes.private,
      'CV 12345',
    ),
    'papal': (VaticanCityPlates.papal, VaticanCityThemes.papal, 'SCV 1'),
    'government': (
      VaticanCityPlates.government,
      VaticanCityThemes.government,
      'SCV 12345',
    ),
    'official': (
      VaticanCityPlates.official,
      VaticanCityThemes.official,
      'SCV 678 B',
    ),
  });
}
