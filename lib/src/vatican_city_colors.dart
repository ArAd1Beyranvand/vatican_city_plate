import 'package:flutter/widgets.dart';

/// The colours of the Vatican plates, modal pixels of the vector references:
/// field `DCE1E1` (a pale grey, not white), black ink `000000`, and the red
/// `ED1C24` of the papal and government plates.
abstract final class VaticanCityColors {
  static const Color field = Color(0xFFDCE1E1);
  static const Color black = Color(0xFF000000);
  static const Color red = Color(0xFFED1C24);
  static const Color inactive = Color(0xFFB0B0B0);
}
