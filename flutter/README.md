FREE PALESTINE 🇮🇷🇵🇸 پاینده ایران

GO VEGAN 🌱

==================================

From the mighty people of Iran to the faithful people of Vatican City to view examples:

https://platexample.ir/#/discover/vaticancity:flutter

# vatican_city_plate

Vatican City's licence plates for the plate_core library: resident, papal, government and official plates, black or red on pale grey, with an advisory validator.

## Languages

| Language | Folder | Example |
| --- | --- | --- |
| Flutter / Dart | [`flutter/`](https://github.com/ArAd1Beyranvand/vatican_city_plate/tree/main/flutter) | [platexample](https://platexample.ir/#/discover/vaticancity:flutter) |
| Kotlin | [`kotlin/`](https://github.com/ArAd1Beyranvand/vatican_city_plate/tree/main/kotlin) | [platexample](https://platexample.ir/#/discover/vaticancity:kotlin) |
| Python | [`python/`](https://github.com/ArAd1Beyranvand/vatican_city_plate/tree/main/python) | [platexample](https://platexample.ir/#/discover/vaticancity:python) |
| TypeScript | [`typescript/`](https://github.com/ArAd1Beyranvand/vatican_city_plate/tree/main/typescript) | [platexample](https://platexample.ir/#/discover/vaticancity:typescript) |

## Quick start

### Install

```yaml
dependencies:
  plate_core: ^0.12.0
  vatican_city_plate: ^0.1.0
```

### Use

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

## Specs

Each spec is one plate layout.

- `VaticanCityPlates.private`
- `VaticanCityPlates.papal`
- `VaticanCityPlates.government`
- `VaticanCityPlates.official`

## Themes

- `VaticanCityThemes.private`
- `VaticanCityThemes.official`
- `VaticanCityThemes.papal`
- `VaticanCityThemes.government`

## Change it

`PlateCanvas` takes `spec:` (an entry of `VaticanCityPlates`) and `theme:` (an entry of `VaticanCityThemes`). Set `validator:` to `VaticanCityValidator()` and `autoValidate: true` to show validation hints.

## Also included

- `VaticanCityCountry` — the country panel.
- `VaticanCityValidator` — the plate validator.

## Plates

Groups are `prefix`, `number` and, on `official` only, `suffix`. `private`
is `CV 00000`, `papal` `SCV 1`, `government` `SCV 00000`, `official`
`SCV 000A`; colour is the theme's.

## Part of plate

Painted by [`plate_core`](https://pub.dev/packages/plate_core); alphabets shared through [`plate_alphabet`](https://pub.dev/packages/plate_alphabet); optional character picker in [`plate_keypad`](https://pub.dev/packages/plate_keypad).

## License

See [LICENSE](https://github.com/ArAd1Beyranvand/vatican_city_plate/blob/main/LICENSE).
