import 'package:bro_form_validator/src/field_validator/bro_field_validator.dart';

class PatternValidator extends BroFieldValidator {
  PatternValidator(
    this.pattern, {
    required String errorText,
    this.caseSensitive = true,
  }) : super(errorText);
  final Pattern pattern;
  final bool caseSensitive;

  @override
  bool isValid(String? value) =>
      hasMatch(pattern.toString(), value!, caseSensitive: caseSensitive);
}
