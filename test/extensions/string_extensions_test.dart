import 'package:olive/extensions/string_extensions.dart';
import 'package:test/test.dart';

void main() {
  group("StringExtensions", () {
    group("isEmptyOrNull", () {
      test('should return true for null strings', () {
        String? value;
        expect(value.isEmptyOrNull, true);
      });

      test('should return true for empty strings', () {
        const value = '';
        expect(value.isEmptyOrNull, true);
      });

      test('should return false for non-empty strings', () {
        const value = 'an actual value';
        expect(value.isEmptyOrNull, false);
      });
    });

    group("isNotEmptyAndNull", () {
      test('should return false for null strings', () {
        String? value;
        expect(value.isNotEmptyAndNull, false);
      });

      test('should return false for empty strings', () {
        const value = '';
        expect(value.isNotEmptyAndNull, false);
      });

      test('should return true for non-empty strings', () {
        const value = 'an actual value';
        expect(value.isNotEmptyAndNull, true);
      });
    });

    group("or", () {
      const defaultValue = 'the default value';

      test('should return the default value for null strings', () {
        String? value;
        expect(value.or(defaultValue), defaultValue);
      });

      test('should return the default value for empty strings', () {
        const value = '';
        expect(value.or(defaultValue), defaultValue);
      });

      test('should return the actual value for non-empty strings', () {
        const value = 'the actual value';
        expect(value.or(defaultValue), value);
      });
    });

    group("orEmpty", () {
      test('should return an empty string for null strings', () {
        String? value;
        expect(value.orEmpty(), '');
      });

      test('should return the same value for empty strings', () {
        const value = '';
        expect(value.orEmpty(), value);
      });

      test('should return the actual value for non-empty strings', () {
        const value = 'the actual value';
        expect(value.orEmpty(), value);
      });
    });

    group("orProvider", () {
      const defaultValue = 'the default value';
      String defaultValueProvider() => defaultValue;

      test('should return the default value for null strings', () {
        String? value;
        expect(value.orProvider(defaultValueProvider), defaultValue);
      });

      test('should return the default value for empty strings', () {
        const value = '';
        expect(value.orProvider(defaultValueProvider), defaultValue);
      });

      test('should return the actual value for non-empty strings', () {
        const value = 'the actual value';
        expect(value.orProvider(defaultValueProvider), value);
      });
    });
  });
}
