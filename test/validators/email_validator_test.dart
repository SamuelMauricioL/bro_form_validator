import 'package:bro_form_validator/bro_form_validator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('EmailValidator test', () {
    const errorText = 'invalid input message';
    final emailValidator = EmailValidator(errorText: errorText);
    test('calling validate with an invalid email will return $errorText', () {
      expect(errorText, emailValidator('invalidEmaial.com'));
    });
    test('calling validate with a valid email will return null', () {
      expect(null, emailValidator('sml@gmail.com'));
    });
  });
}
