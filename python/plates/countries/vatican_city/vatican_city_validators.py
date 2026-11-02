"""Port of vatican_city_plate/lib/src/vatican_city_validators.dart. Hand-ported; codegen never overwrites this file."""
from __future__ import annotations

import re

from plates.core.validators.plate_validator import GatedPlateValidator, PlateEntry, PlateValidation, is_digits


class VaticanCityValidator(GatedPlateValidator):
    gate_group = 'number'

    reason_prefix = "The prefix is CV or SCV."
    reason_number = "The number is digits."
    reason_suffix = "The suffix is one letter."

    def judge(self, entry: PlateEntry) -> PlateValidation:
        if entry.group("prefix") not in ("CV", "SCV"):
            return PlateValidation.invalid(self.reason_prefix)
        if not is_digits(entry.group("number")):
            return PlateValidation.invalid(self.reason_number)
        suffix = entry.group("suffix")
        if suffix and re.fullmatch(r"[A-Z]", suffix) is None:
            return PlateValidation.invalid(self.reason_suffix)
        return PlateValidation.valid()
