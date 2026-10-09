import 'package:flutter/widgets.dart' show EdgeInsets;
import 'package:plate_alphabet/plate_alphabet.dart';
import 'package:plate_core/plate_core.dart';

import 'vatican_city_country.dart';

/// One group of evenly pitched cells: [count] cells of the [alphabet] centred
/// on [cx] at [pitch].
class _Run {
  const _Run(this.key, this.alphabet, this.count, this.cx, this.pitch);

  final String key;
  final PlateAlphabet alphabet;
  final int count;
  final double cx, pitch;
}

/// Where the ink sits, in plate units.
///
/// The four vector references are 350×83 and were stretched to the
/// documented 520×110 (the artwork's aspect is 4.2, the article's 4.73); the
/// numbers below are ink extents in that space. A plate is one row, no
/// panel, no divider: the `CV` or `SCV` prefix, a gap, the digits.
///
/// Ink y 21.2–91.4 (70 tall, centre 56.3) on private, official and
/// government; 18.6–88.8 on the papal plate. Glyph ink is about 55% of its
/// box and a box cannot leave the 110 canvas, so ink is ~60 (86% of
/// reference), all four designs on the full-height box.
///
/// Private `CV 12345`: `CV` centres 100.9, 150.8; digits 225.1 (the `1`, which
/// is ink-biased), 272.0, 324.4, 374.9, 426.4, fitted at pitch 51.5.
/// Papal `SCV 1` (red): letters 176.8, 225.8, 274.9; `1` at 346.2.
/// Government `SCV 12345` (red, cardinals): letters 75.8, 124.8, 174.6; digits
/// at pitch 51.5 centred 347.6. Official `SCV 678B`: letters 92.1, 141.1,
/// 190.9; digits 275.0, 328.4, 378.9 (pitch 52); `B` at 433.8.
///
/// Field `DCE1E1`, ink `000000` / `ED1C24`, sampled. Not drawn: the
/// Popemobile photographs, the international `V` oval (a rear sticker, not a
/// plate), and older series. No diplomatic plate is implemented, so nothing
/// Israel-specific exists here to refuse.
abstract final class _Layout {
  static const double width = 520;
  static const double height = 110;

  static const List<_Run> private = <_Run>[
    _Run('prefix', VaticanCityAlphabets.letters, 2, 125.85, 50),
    _Run('number', VaticanCityAlphabets.digits, 5, 324.4, 51.5),
  ];
  static const List<_Run> papal = <_Run>[
    _Run('prefix', VaticanCityAlphabets.letters, 3, 225.8, 49),
    _Run('number', VaticanCityAlphabets.digits, 1, 346.2, 51.5),
  ];
  static const List<_Run> government = <_Run>[
    _Run('prefix', VaticanCityAlphabets.letters, 3, 124.8, 49.4),
    _Run('number', VaticanCityAlphabets.digits, 5, 347.6, 51.5),
  ];
  static const List<_Run> official = <_Run>[
    _Run('prefix', VaticanCityAlphabets.letters, 3, 141.1, 49.4),
    _Run('number', VaticanCityAlphabets.digits, 3, 328.4, 52),
    _Run('suffix', VaticanCityAlphabets.letters, 1, 433.8, 52),
  ];
}

/// The Vatican plates. Groups `prefix`, `number`, and `suffix` (official
/// only).
///
/// [private] is `CV 00000` for residents; [papal] is the red `SCV 1`;
/// [government] the red `SCV 00000` of cardinals and the Pope's other
/// vehicles; [official] the black `SCV 000A` of State vehicles. The colours
/// are the theme's.
abstract final class VaticanCityPlates {
  static final PlateSpec private = _spec('va.private', _Layout.private);
  static final PlateSpec papal = _spec('va.papal', _Layout.papal);
  static final PlateSpec government = _spec(
    'va.government',
    _Layout.government,
  );
  static final PlateSpec official = _spec('va.official', _Layout.official);

  static List<PlateSpec> get all => <PlateSpec>[
    private,
    papal,
    government,
    official,
  ];

  static PlateSpec _spec(String id, List<_Run> runs) {
    final List<PlateSlot> slots = <PlateSlot>[];
    final List<PlateTextGroup> groups = <PlateTextGroup>[];
    for (final _Run r in runs) {
      groups.add(
        PlateTextGroup(<int>[
          for (int i = 0; i < r.count; i++) slots.length + i,
        ], key: r.key),
      );
      slots.addAll(
        plateRegister(
          alphabet: r.alphabet,
          count: r.count,
          left: r.cx - r.pitch * r.count / 2,
          top: 0,
          width: r.pitch,
          height: _Layout.height,
        ),
      );
    }
    return PlateSpec(
      id: id,
      country: VaticanCityCountry.vatican_city,
      canvasWidth: _Layout.width,
      canvasHeight: _Layout.height,
      panel: const PlatePanel(
        box: PlateBox(0, 0, 0, 0),
        padding: EdgeInsets.zero,
      ),
      noPanel: true,
      slots: slots,
      textGroups: groups,
    );
  }
}
