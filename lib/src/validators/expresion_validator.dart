import 'package:bro_form_validator/src/field_validator/bro_field_validator.dart';

class ExpressionValidator extends BroFieldValidator {
  ExpressionValidator(this.experssion, {required String errorText})
      : super(errorText);
  final bool Function(String? value) experssion;

  @override
  bool isValid(String? value) {
    return experssion(value);
  }
}
