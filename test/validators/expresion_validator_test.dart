// ignore_for_file: lines_longer_than_80_chars

import 'package:bro_form_validator/bro_form_validator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ExpressionValidator test', () {
    const emptyErrorText = 'field should be empty';
    final emptyExperssionValidator = ExpressionValidator(
      (value) => value!.isEmpty,
      errorText: emptyErrorText,
    );

    test('calling validate with an empty string will return true', () {
      expect(null, emptyExperssionValidator(''));
    });

    test(
        'calling validate with an empty string will return error $emptyErrorText',
        () {
      expect(emptyErrorText, emptyExperssionValidator('abc'));
    });
  });
}
