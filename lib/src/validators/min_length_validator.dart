import 'package:bro_form_validator/src/field_validator/bro_field_validator.dart';

class MinLengthValidator extends BroFieldValidator {
  MinLengthValidator(this.min, {required String errorText}) : super(errorText);
  final int min;

  @override
  bool get ignoreEmptyValues => false;

  @override
  bool isValid(String? value) {
    return value!.runes.length >= min;
  }
}
