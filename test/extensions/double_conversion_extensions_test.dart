import 'package:olive/extensions/double_conversion_extensions.dart';
import 'package:test/test.dart';

void main() {
  group("DoubleConversionExtensions", () {
    group("milliseconds should return", () {
      test('zero for null values', () {
        double? value;
        expect(
          value.milliseconds().inMilliseconds,
          equals(0),
        );
      });

      test('zero for negative values', () {
        const value = -0.9;
        expect(
          value.milliseconds().inMilliseconds,
          equals(0),
        );
      });

      test('zero for zero', () {
        const value = 0.0;
        expect(
          value.milliseconds().inMilliseconds,
          equals(0),
        );
      });

      test('the actual value for positive values', () {
        const value = 1.1;
        final convertedValue = value.milliseconds();
        expect(
          convertedValue.inMilliseconds,
          equals(value.round()),
        );
        expect(
          convertedValue.inMicroseconds,
          equals((value * Duration.microsecondsPerMillisecond).round()),
        );
      });
    });

    group("seconds should return", () {
      test('zero for null values', () {
        double? value;
        expect(
          value.seconds().inSeconds,
          equals(0),
        );
      });

      test('zero for negative values', () {
        const value = -0.9;
        expect(
          value.seconds().inSeconds,
          equals(0),
        );
      });

      test('zero for zero', () {
        const value = 0.0;
        expect(
          value.seconds().inSeconds,
          equals(0),
        );
      });

      test('the actual value for positive values', () {
        const value = 1.1;
        final convertedValue = value.seconds();
        expect(
          convertedValue.inSeconds,
          equals(value.round()),
        );
        expect(
          convertedValue.inMicroseconds,
          equals((value * Duration.microsecondsPerSecond).round()),
        );
      });
    });

    group("minutes should return", () {
      test('zero for null values', () {
        double? value;
        expect(
          value.minutes().inMinutes,
          equals(0),
        );
      });

      test('zero for negative values', () {
        const value = -0.9;
        expect(
          value.minutes().inMinutes,
          equals(0),
        );
      });

      test('zero for zero', () {
        const value = 0.0;
        expect(
          value.minutes().inMinutes,
          equals(0),
        );
      });

      test('the actual value for positive values', () {
        const value = 1.1;
        final convertedValue = value.minutes();
        expect(
          convertedValue.inMinutes,
          equals(value.round()),
        );
        expect(
          convertedValue.inMicroseconds,
          equals((value * Duration.microsecondsPerMinute).round()),
        );
      });
    });

    group("hours should return", () {
      test('zero for null values', () {
        double? value;
        expect(
          value.hours().inHours,
          equals(0),
        );
      });

      test('zero for negative values', () {
        const value = -0.9;
        expect(
          value.hours().inHours,
          equals(0),
        );
      });

      test('zero for zero', () {
        const value = 0.0;
        expect(
          value.hours().inHours,
          equals(0),
        );
      });

      test('the actual value for positive values', () {
        const value = 1.1;
        final convertedValue = value.hours();
        expect(
          convertedValue.inHours,
          equals(value.round()),
        );
        expect(
          convertedValue.inMicroseconds,
          equals((value * Duration.microsecondsPerHour).round()),
        );
      });
    });

    group("days should return", () {
      test('zero for null values', () {
        double? value;
        expect(
          value.days().inDays,
          equals(0),
        );
      });

      test('zero for negative values', () {
        const value = -0.9;
        expect(
          value.days().inDays,
          equals(0),
        );
      });

      test('zero for zero', () {
        const value = 0.0;
        expect(
          value.days().inDays,
          equals(0),
        );
      });

      test('the actual value for positive values', () {
        const value = 1.1;
        final convertedValue = value.days();
        expect(
          convertedValue.inDays,
          equals(value.round()),
        );
        expect(
          convertedValue.inMicroseconds,
          equals((value * Duration.microsecondsPerDay).round()),
        );
      });
    });
  });
}
