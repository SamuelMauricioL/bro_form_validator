import 'package:bro_form_validator/src/field_validator/bro_field_validator.dart';

class RangeValidator extends BroFieldValidator {
  RangeValidator({
    required this.min,
    required this.max,
    required String errorText,
  }) : super(errorText);
  final num min;
  final num max;

  @override
  bool isValid(String? value) {
    try {
      final numericValue = num.parse(value!);
      return numericValue >= min && numericValue <= max;
    } catch (_) {
      return false;
    }
  }
}
