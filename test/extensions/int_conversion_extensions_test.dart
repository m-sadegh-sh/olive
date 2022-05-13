import 'package:olive/extensions/int_conversion_extensions.dart';
import 'package:test/test.dart';

void main() {
  group("IntConversionExtensions", () {
    group("microseconds should return", () {
      test('zero for null values', () {
        int? value;
        expect(
          value.microseconds().inMicroseconds,
          equals(0),
        );
      });

      test('zero for negative values', () {
        const value = -1;
        expect(
          value.microseconds().inMicroseconds,
          equals(0),
        );
      });

      test('zero for zero', () {
        const value = 0;
        expect(
          value.microseconds().inMicroseconds,
          equals(0),
        );
      });

      test('the actual value for positive values', () {
        const value = 1;
        expect(
          value.microseconds().inMicroseconds,
          equals(value),
        );
      });
    });

    group("milliseconds should return", () {
      test('zero for null values', () {
        int? value;
        expect(
          value.milliseconds().inMilliseconds,
          equals(0),
        );
      });

      test('zero for negative values', () {
        const value = -1;
        expect(
          value.milliseconds().inMilliseconds,
          equals(0),
        );
      });

      test('zero for zero', () {
        const value = 0;
        expect(
          value.milliseconds().inMilliseconds,
          equals(0),
        );
      });

      test('the actual value for positive values', () {
        const value = 1;
        expect(
          value.milliseconds().inMilliseconds,
          equals(value),
        );
      });
    });

    group("seconds should return", () {
      test('zero for null values', () {
        int? value;
        expect(
          value.seconds().inSeconds,
          equals(0),
        );
      });

      test('zero for negative values', () {
        const value = -1;
        expect(
          value.seconds().inSeconds,
          equals(0),
        );
      });

      test('zero for zero', () {
        const value = 0;
        expect(
          value.seconds().inSeconds,
          equals(0),
        );
      });

      test('the actual value for positive values', () {
        const value = 1;
        expect(
          value.seconds().inSeconds,
          equals(value),
        );
      });
    });

    group("minutes should return", () {
      test('zero for null values', () {
        int? value;
        expect(
          value.minutes().inMinutes,
          equals(0),
        );
      });

      test('zero for negative values', () {
        const value = -1;
        expect(
          value.minutes().inMinutes,
          equals(0),
        );
      });

      test('zero for zero', () {
        const value = 0;
        expect(
          value.minutes().inMinutes,
          equals(0),
        );
      });

      test('the actual value for positive values', () {
        const value = 1;
        expect(
          value.minutes().inMinutes,
          equals(value),
        );
      });
    });

    group("hours should return", () {
      test('zero for null values', () {
        int? value;
        expect(
          value.hours().inHours,
          equals(0),
        );
      });

      test('zero for negative values', () {
        const value = -1;
        expect(
          value.hours().inHours,
          equals(0),
        );
      });

      test('zero for zero', () {
        const value = 0;
        expect(
          value.hours().inHours,
          equals(0),
        );
      });

      test('the actual value for positive values', () {
        const value = 1;
        expect(
          value.hours().inHours,
          equals(value),
        );
      });
    });

    group("days should return", () {
      test('zero for null values', () {
        int? value;
        expect(
          value.days().inDays,
          equals(0),
        );
      });

      test('zero for negative values', () {
        const value = -1;
        expect(
          value.days().inDays,
          equals(0),
        );
      });

      test('zero for zero', () {
        const value = 0;
        expect(
          value.days().inDays,
          equals(0),
        );
      });

      test('the actual value for positive values', () {
        const value = 1;
        expect(
          value.days().inDays,
          equals(value),
        );
      });
    });
  });
}
