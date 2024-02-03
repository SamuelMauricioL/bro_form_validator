import 'package:bro_form_validator/src/field_validator/bro_field_validator.dart';

class LengthRangeValidator extends BroFieldValidator {
  LengthRangeValidator({
    required this.min,
    required this.max,
    required String errorText,
  }) : super(errorText);
  final int min;
  final int max;

  @override
  bool get ignoreEmptyValues => false;

  @override
  bool isValid(String? value) {
    return value!.runes.length >= min && value.runes.length <= max;
  }
}
