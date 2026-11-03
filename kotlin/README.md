FREE PALESTINE 🇮🇷🇵🇸 پاینده ایران

GO VEGAN 🌱

==================================

From the mighty people of Iran to the faithful people of Vatican City to view examples:

https://platexample.ir/#/discover/vaticancity:kotlin

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

### Install (Kotlin)

Copy `kotlin/src/commonMain/kotlin/plates/countries/vatican_city/` into `plate_core/kotlin/src/commonMain/kotlin/plates/countries/`.

Then run the tests from `plate_core/kotlin/`: `./gradlew jvmTest`.

### Use

```kotlin
import plates.countries.vatican_city.country

val spec = country.specs["va.private"]
println(country.pkg)
```

## Specs

The specs are the same in every language (they come from shared data).

- `va.private`
- `va.papal`
- `va.government`
- `va.official`

## Themes

- `VaticanCityThemes.private`
- `VaticanCityThemes.papal`

## Change it

- Specs: `country.specs`, by id.
- Themes: `country.themes`.
- Validators: `country.validators` (`VaticanCityValidator`).

## License

See [LICENSE](https://github.com/ArAd1Beyranvand/vatican_city_plate/blob/main/LICENSE).
