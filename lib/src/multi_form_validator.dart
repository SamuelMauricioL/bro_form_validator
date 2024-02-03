import 'package:bro_form_validator/src/field_validator/field_validator.dart';

/// {@template bro_form_validator}
/// Form validator that provide common and custom validators for brovelopers
/// {@endtemplate}
class MultiValidator extends FieldValidator<String?> {
  /// {@macro bro_form_validator}
  MultiValidator(this.validators) : super(_errorText);
  final List<FieldValidator<String?>> validators;
  static String _errorText = '';

  @override
  bool isValid(String? value) {
    for (final validator in validators) {
      if (validator is MultiValidator) {
        if (!validator.isValid(value)) return false;
      } else if (validator.call(value) != null) {
        _errorText = validator.errorText;
        return false;
      }
    }
    return true;
  }

  @override
  String? call(String? value) {
    return isValid(value) ? null : _errorText;
  }
}
