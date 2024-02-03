import 'package:bro_form_validator/bro_form_validator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('RangeValidator test', () {
    const errorText = 'invalid input message';
    final rangeValidator = RangeValidator(
      min: 18,
      max: 32,
      errorText: errorText,
    );
    test('calling validate with < 18 or > 32  will return error text', () {
      expect(errorText, rangeValidator('16'));
    });
    test('calling validate with >= 18 and <= 32 will return null', () {
      expect(null, rangeValidator('20'));
    });
  });
}
