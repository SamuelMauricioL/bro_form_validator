import 'package:bro_form_validator/bro_form_validator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('RequiredValidator test', () {
    const errorText = 'invalid input message';
    final requiredValidator = RequiredValidator(errorText: errorText);
    test('calling validate with an empty value will return $errorText', () {
      expect(errorText, requiredValidator(''));
    });
    test('calling validate with a value will return null', () {
      expect(null, requiredValidator('valid input'));
    });
  });
}
