// ignore_for_file: lines_longer_than_80_chars

import 'package:bro_form_validator/bro_form_validator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('LengthRangeValidator test', () {
    const errorText = 'invalid input message';
    final lengthRangeValidator = LengthRangeValidator(
      min: 3,
      max: 10,
      errorText: errorText,
    );
    test(
        'calling validate with a string less then 3 or greater than 10 charecters will return error text',
        () {
      expect(errorText, lengthRangeValidator('sh'));
      expect(
        errorText,
        lengthRangeValidator('more than 10 characters message'),
      );
    });
    test(
        'calling validate with a string equal or less then 15 charecters will return null',
        () {
      expect(null, lengthRangeValidator('valid'));
    });
  });
}
