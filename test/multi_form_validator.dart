// ignore_for_file: lines_longer_than_80_chars

import 'package:bro_form_validator/bro_form_validator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MultiValidator test', () {
    const requiredErrorText = 'field is required';
    const maxLengthErrorText = 'max lenght is 15';
    group('MultiValidator with required validator', () {
      final multiValidator = MultiValidator([
        RequiredValidator(errorText: requiredErrorText),
        MaxLengthValidator(15, errorText: maxLengthErrorText),
      ]);
      test(
          'calling validate with an empty value will return $requiredErrorText',
          () {
        expect(requiredErrorText, multiValidator(''));
      });
      test(
          'calling validate with a string > 15 charecters will return $maxLengthErrorText',
          () {
        expect(
          maxLengthErrorText,
          multiValidator('a long text that contains more than 15 chars'),
        );
      });
      test('calling validate with a string <= 15 charecters will return null',
          () {
        expect(null, multiValidator('short text'));
      });
    });
    group('MultiValidator without required validator', () {
      final nonRequiredMultiValidator = MultiValidator([
        MaxLengthValidator(15, errorText: maxLengthErrorText),
      ]);
      test('calling validate with an empty value will return null', () {
        expect(null, nonRequiredMultiValidator(''));
      });
      test(
          'calling validate with a string > 15 charecters will return $maxLengthErrorText',
          () {
        expect(
          maxLengthErrorText,
          nonRequiredMultiValidator(
            'a long text that contains more than 15 chars',
          ),
        );
      });
      test('calling validate with a string <= 15 charecters will return null',
          () {
        expect(null, nonRequiredMultiValidator('short text'));
      });
    });
  });
}
