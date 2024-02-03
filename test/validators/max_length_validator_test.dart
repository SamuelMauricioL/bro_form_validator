// ignore_for_file: lines_longer_than_80_chars

import 'package:bro_form_validator/bro_form_validator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MaxLenghtValidator test', () {
    const errorText = 'invalid input message';
    final maxLengthValidator = MaxLengthValidator(15, errorText: errorText);
    test(
        'calling validate with a string greater then 15 charecters will return error text',
        () {
      expect(errorText, maxLengthValidator('text greater than 15 charecters'));
    });
    test(
        'calling validate with a string equal or less then 15 charecters will return null',
        () {
      expect(null, maxLengthValidator('valid input'));
    });
  });
}
