// ignore_for_file: lines_longer_than_80_chars

import 'package:bro_form_validator/bro_form_validator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PatternValidator test', () {
    const errorText = 'invalid input message';
    final patternValidator = PatternValidator(
      r'(?=.?[#?!@$%^&-])',
      errorText: errorText,
    );
    test('calling validate with no special char will return error text', () {
      expect(errorText, patternValidator('invalid'));
    });

    final caseSensitivePatternValidator =
        PatternValidator('[a-z]', errorText: errorText);
    test('calling validate with no lower case char will return error text', () {
      expect(errorText, caseSensitivePatternValidator('A'));
    });

    test('calling validate with at least one lower case char will return null',
        () {
      expect(null, caseSensitivePatternValidator('a'));
    });
    final caseInsensitivePatternValidator =
        PatternValidator('[a-z]', errorText: errorText, caseSensitive: false);
    test(
        'calling validate with no lower or upper case char will return error text',
        () {
      expect(errorText, caseInsensitivePatternValidator('*'));
    });
    test('calling validate with at least one lower case char will return null',
        () {
      expect(null, caseInsensitivePatternValidator('a'));
    });
    test('calling validate with at least one upper case char will return null',
        () {
      expect(null, caseInsensitivePatternValidator('A'));
    });
  });
}
