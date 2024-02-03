import 'package:bro_form_validator/src/field_validator/bro_field_validator.dart';

class RequiredValidator extends BroFieldValidator {
  RequiredValidator({required String errorText}) : super(errorText);

  @override
  bool get ignoreEmptyValues => false;

  @override
  bool isValid(String? value) {
    return value != null && value.isNotEmpty;
  }

  @override
  String? call(String? value) {
    return isValid(value) ? null : errorText;
  }
}
