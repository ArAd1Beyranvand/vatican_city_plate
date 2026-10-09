import 'package:plate_core/plate_core.dart';

/// Judges a Vatican plate: `CV` (resident) or `SCV` (State) followed by
/// digits, and on an official plate one trailing letter. Reports, never bars
/// a keystroke.
class VaticanCityValidator extends GatedPlateValidator {
  const VaticanCityValidator();

  @override
  String get gateGroup => 'number';

  static const String reasonPrefix = 'The prefix is CV or SCV.';
  static const String reasonNumber = 'The number is digits.';
  static const String reasonSuffix = 'The suffix is one letter.';

  static final RegExp _digits = RegExp(r'^[0-9]+$');
  static final RegExp _letter = RegExp(r'^[A-Z]$');

  @override
  PlateValidation judge(PlateEntry entry) {
    final String prefix = entry.group('prefix');
    if (prefix != 'CV' && prefix != 'SCV') {
      return const PlateValidation.invalid(reasonPrefix);
    }
    if (!_digits.hasMatch(entry.group('number'))) {
      return const PlateValidation.invalid(reasonNumber);
    }
    final String suffix = entry.group('suffix');
    if (suffix.isNotEmpty && !_letter.hasMatch(suffix)) {
      return const PlateValidation.invalid(reasonSuffix);
    }
    return const PlateValidation.valid();
  }
}
