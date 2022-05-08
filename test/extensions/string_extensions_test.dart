import 'package:olive/extensions/string_extensions.dart';
import 'package:test/test.dart';

void main() {
  group("StringExtensions", () {
    group("isEmptyOrNull should return", () {
      test('true for null values', () {
        String? value;
        expect(value.isEmptyOrNull, true);
      });

      test('true for empty values', () {
        const value = '';
        expect(value.isEmptyOrNull, true);
      });

      test('false for non-empty values', () {
        const value = 'an actual value';
        expect(value.isEmptyOrNull, false);
      });
    });

    group("isNotEmptyAndNull should return", () {
      test('false for null values', () {
        String? value;
        expect(value.isNotEmptyAndNull, false);
      });

      test('false for empty values', () {
        const value = '';
        expect(value.isNotEmptyAndNull, false);
      });

      test('true for non-empty values', () {
        const value = 'an actual value';
        expect(value.isNotEmptyAndNull, true);
      });
    });

    group("or should return", () {
      const defaultValue = 'the default value';

      test('the default value for null values', () {
        String? value;
        expect(value.or(defaultValue), defaultValue);
      });

      test('the default value for empty values', () {
        const value = '';
        expect(value.or(defaultValue), defaultValue);
      });

      test('the actual value for non-empty values', () {
        const value = 'the actual value';
        expect(value.or(defaultValue), value);
      });
    });

    group("orEmpty should return", () {
      test('an empty string for null values', () {
        String? value;
        expect(value.orEmpty(), '');
      });

      test('the same value for empty values', () {
        const value = '';
        expect(value.orEmpty(), value);
      });

      test('the actual value for non-empty values', () {
        const value = 'the actual value';
        expect(value.orEmpty(), value);
      });
    });

    group("orProvider should return", () {
      const defaultValue = 'the default value';
      String defaultValueProvider() => defaultValue;

      test('the default value for null values', () {
        String? value;
        expect(value.orProvider(defaultValueProvider), defaultValue);
      });

      test('the default value for empty values', () {
        const value = '';
        expect(value.orProvider(defaultValueProvider), defaultValue);
      });

      test('the actual value for non-empty values', () {
        const value = 'the actual value';
        expect(value.orProvider(defaultValueProvider), value);
      });
    });
  });
}
