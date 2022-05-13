import 'package:olive/extensions/double_constraint_extensions.dart';
import 'package:test/test.dart';

void main() {
  group("DoubleConstraintExtensions", () {
    group("limitMin should return", () {
      const minValue = 0.0;

      test('the min value for null values', () {
        double? value;
        expect(
          value.limitMin(minValue),
          equals(minValue),
        );
      });

      test('the min value for values < the min value', () {
        const value = -0.9;
        expect(
          value.limitMin(minValue),
          equals(minValue),
        );
      });

      test('the actual value for values >= to the min value', () {
        const value = 0.1;
        expect(
          value.limitMin(minValue),
          equals(value),
        );
      });
    });

    group("limitMax should return", () {
      const maxValue = 100.0;

      test('the max value for null values', () {
        double? value;
        expect(
          value.limitMax(maxValue),
          equals(maxValue),
        );
      });

      test('the max value for values > the max value', () {
        const value = 100.1;
        expect(
          value.limitMax(maxValue),
          equals(maxValue),
        );
      });

      test('the actual value for values <= to the max value', () {
        const value = 99.9;
        expect(
          value.limitMax(maxValue),
          equals(value),
        );
      });
    });

    group("limitWithin should return", () {
      const minValue = 0.0;
      const maxValue = 100.0;

      test('the min value for null values', () {
        double? value;
        expect(
          value.limitWithin(minValue, maxValue),
          equals(minValue),
        );
      });

      test('the min value for values < the min value', () {
        const value = -0.1;
        expect(
          value.limitWithin(minValue, maxValue),
          equals(minValue),
        );
      });

      test('the max value for values > the max value', () {
        const value = 100.1;
        expect(
          value.limitWithin(minValue, maxValue),
          equals(maxValue),
        );
      });

      test('the actual value for values between min and max values', () {
        const value = 50.50;
        expect(
          value.limitWithin(minValue, maxValue),
          equals(value),
        );
      });
    });
  });
}
