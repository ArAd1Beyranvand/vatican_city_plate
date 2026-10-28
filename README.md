FREE PALESTINE 🇮🇷🇵🇸 پاینده ایران

GO VEGAN 🌱

==================================

From the mighty people of Iran to the faithful people of Vatican City to view examples:

https://platexample.ir/#/discover/vaticancity

# vatican_city_plate

Vatican City's licence plates for the `plate_core` library: the resident CV, papal, government (cardinals) and official SCV plates, black or red on pale grey, with an advisory validator.

## Install

```yaml
dependencies:
  plate_core: ^0.12.0
  vatican_city_plate: ^0.1.0
```

## Use

```dart
import 'package:plate_core/plate_core.dart';
import 'package:vatican_city_plate/vatican_city_plate.dart';

PlateCanvas(
  spec: VaticanCityPlates.private,
  theme: VaticanCityThemes.private,
  validator: const VaticanCityValidator(),
  autoValidate: true,
  onChooseCharacter: noCharacterChooser,
);
```

## Contains

- `VaticanCityCountry` — country panel: `vatican_city`.
- `VaticanCityPlates` — 4 plate specs: `private`, `papal`, `government`, `official`.
- `VaticanCityThemes` — 4 themes: `private`, `official`, `papal`, `government`.
- `VaticanCityValidator` — advisory validator; flags the frame, never blocks a keystroke.

## Plates

Groups are `prefix`, `number` and, on `official` only, `suffix`. `private`
is `CV 00000`, `papal` `SCV 1`, `government` `SCV 00000`, `official`
`SCV 000A`; colour is the theme's.

## Part of plate

Painted by [`plate_core`](https://pub.dev/packages/plate_core); alphabets shared through [`plate_alphabet`](https://pub.dev/packages/plate_alphabet); optional character picker in [`plate_keypad`](https://pub.dev/packages/plate_keypad).

