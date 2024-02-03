import 'package:bro_form_validator/src/field_validator/field_validator.dart';

abstract class BroFieldValidator extends FieldValidator<String?> {
  BroFieldValidator(super.errorText);

  // return false if you want the validator to return error
  // message when the value is empty.
  bool get ignoreEmptyValues => true;

  @override
  String? call(String? value) {
    return (ignoreEmptyValues && value!.isEmpty) ? null : super.call(value);
  }

  /// helper function to check if an input matches a given pattern
  bool hasMatch(
    String pattern,
    String input, {
    bool caseSensitive = true,
  }) =>
      RegExp(pattern, caseSensitive: caseSensitive).hasMatch(input);
}
