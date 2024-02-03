import 'package:bro_form_validator/bro_form_validator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MinLenghtValidator test', () {
    const errorText = 'invalid input message';
    final minLengthValidator = MinLengthValidator(5, errorText: errorText);
    test('calling validate with a string < 5 charecters will return $errorText',
        () {
      expect(errorText, minLengthValidator('text'));
    });
    test('calling validate with a string >= 5 charecters will return null', () {
      expect(null, minLengthValidator('valid text'));
    });
  });
}
