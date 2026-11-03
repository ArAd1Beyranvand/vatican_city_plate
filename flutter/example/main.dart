import 'package:flutter/widgets.dart';
import 'package:plate_core/plate_core.dart';
import 'package:vatican_city_plate/vatican_city_plate.dart';

void main() => runApp(
  PlateExampleApp(
    spec: VaticanCityPlates.private,
    theme: VaticanCityThemes.private,
  ),
);
