import 'package:bro_form_validator/src/field_validator/bro_field_validator.dart';

class MaxLengthValidator extends BroFieldValidator {
  MaxLengthValidator(this.max, {required String errorText}) : super(errorText);
  final int max;

  @override
  bool isValid(String? value) {
    return value!.runes.length <= max;
  }
}
