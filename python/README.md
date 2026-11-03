FREE PALESTINE 🇮🇷🇵🇸 پاینده ایران

GO VEGAN 🌱

==================================

From the mighty people of Iran to the faithful people of Vatican City to view examples:

https://platexample.ir/#/discover/vaticancity:python

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

### Install (Python)

Copy `python/plates/countries/vatican_city/` into `plate_core/python/plates/countries/`.

Then run the tests from `plate_core/python/`: `pytest`.

### Use

```python
from plates.countries.vatican_city.data import SPECS, THEMES

spec = SPECS["va.private"]
theme = THEMES["VaticanCityThemes.private"]
print(spec.id)
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

- Pick a spec: use another key of `SPECS`.
- Pick a theme: use another key of `THEMES`.
- Validators: `VALIDATORS` maps the names `VaticanCityValidator` to classes.

## License

See [LICENSE](https://github.com/ArAd1Beyranvand/vatican_city_plate/blob/main/LICENSE).
