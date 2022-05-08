import 'package:olive/extensions/string_logical_extensions.dart';
import 'package:test/test.dart';

void main() {
  group("StringExtensions", () {
    group("isEmptyOrNull should return", () {
      test('true for null values', () {
        String? value;
        expect(
          value.isEmptyOrNull,
          equals(true),
        );
      });

      test('true for empty values', () {
        const value = '';
        expect(
          value.isEmptyOrNull,
          equals(true),
        );
      });

      test('false for non-empty values', () {
        const value = 'an actual value';
        expect(
          value.isEmptyOrNull,
          equals(false),
        );
      });
    });

    group("isNotEmptyAndNull should return", () {
      test('false for null values', () {
        String? value;
        expect(
          value.isNotEmptyAndNull,
          equals(false),
        );
      });

      test('false for empty values', () {
        const value = '';
        expect(
          value.isNotEmptyAndNull,
          equals(false),
        );
      });

      test('true for non-empty values', () {
        const value = 'an actual value';
        expect(
          value.isNotEmptyAndNull,
          equals(true),
        );
      });
    });
  });
}
