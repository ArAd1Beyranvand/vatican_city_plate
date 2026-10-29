/// Vatican City's licence plates for the `plate_core` library: the resident
/// CV, papal, government (cardinals) and official SCV plates, black or red on
/// pale grey, with an advisory validator.
library;

// TODO(py): [D5] one module `plates.countries.vatican_city`; assets via importlib.resources.
// TODO(ts): [D5] one subpath export `./countries/vatican_city`; tree-shakable.
// TODO(kt): [D5] package `countries.vatican_city` in the countries module.
export 'package:plate_alphabet/plate_alphabet.dart' show VaticanCityAlphabets;
export 'src/vatican_city_colors.dart';
export 'src/vatican_city_country.dart';
export 'src/vatican_city_plates.dart';
export 'src/vatican_city_themes.dart';
export 'src/vatican_city_validators.dart';
