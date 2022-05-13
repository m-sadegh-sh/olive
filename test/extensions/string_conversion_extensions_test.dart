import 'package:olive/extensions/string_conversion_extensions.dart';
import 'package:test/test.dart';

void main() {
  group("StringConversionExtensions", () {
    group("or should return", () {
      const defaultValue = 'the default value';

      test('the default value for null values', () {
        String? value;
        expect(
          value.or(defaultValue),
          equals(defaultValue),
        );
      });

      test('the default value for empty values', () {
        const value = '';
        expect(
          value.or(defaultValue),
          equals(defaultValue),
        );
      });

      test('the actual value for non-empty values', () {
        const value = 'the actual value';
        expect(
          value.or(defaultValue),
          equals(value),
        );
      });
    });

    group("orEmpty should return", () {
      test('an empty string for null values', () {
        String? value;
        expect(
          value.orEmpty(),
          equals(''),
        );
      });

      test('the same value for empty values', () {
        const value = '';
        expect(
          value.orEmpty(),
          equals(value),
        );
      });

      test('the actual value for non-empty values', () {
        const value = 'the actual value';
        expect(
          value.orEmpty(),
          equals(value),
        );
      });
    });

    group("orProvider should return", () {
      const defaultValue = 'the default value';
      String defaultValueProvider() => defaultValue;

      test('the default value for null values', () {
        String? value;
        expect(
          value.orProvider(defaultValueProvider),
          equals(defaultValue),
        );
      });

      test('the default value for empty values', () {
        const value = '';
        expect(
          value.orProvider(defaultValueProvider),
          equals(defaultValue),
        );
      });

      test('the actual value for non-empty values', () {
        const value = 'the actual value';
        expect(
          value.orProvider(defaultValueProvider),
          equals(value),
        );
      });
    });
  });
}
