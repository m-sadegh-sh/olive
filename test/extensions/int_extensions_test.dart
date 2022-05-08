import 'package:olive/extensions/int_extensions.dart';
import 'package:test/test.dart';

void main() {
  group("IntExtensions", () {
    group("limitMin should return", () {
      const minValue = 0;

      test('the min value for null values', () {
        int? value;
        expect(value.limitMin(minValue), minValue);
      });

      test('the min value for values < the min value', () {
        const value = -1;
        expect(value.limitMin(minValue), minValue);
      });

      test('the actual value for values >= to the min value', () {
        const value = 1;
        expect(value.limitMin(minValue), value);
      });
    });

    group("limitMax should return", () {
      const maxValue = 100;

      test('the max value for null values', () {
        int? value;
        expect(value.limitMax(maxValue), maxValue);
      });

      test('the max value for values > the max value', () {
        const value = 101;
        expect(value.limitMax(maxValue), maxValue);
      });

      test('the actual value for values <= to the max value', () {
        const value = 99;
        expect(value.limitMax(maxValue), value);
      });
    });

    group("limitWithin should return", () {
      const minValue = 0;
      const maxValue = 100;

      test('the min value for null values', () {
        int? value;
        expect(value.limitWithin(minValue, maxValue), minValue);
      });

      test('the min value for values < the min value', () {
        const value = -1;
        expect(value.limitWithin(minValue, maxValue), minValue);
      });

      test('the max value for values > the max value', () {
        const value = 101;
        expect(value.limitWithin(minValue, maxValue), maxValue);
      });

      test('the actual value for values between min and max values', () {
        const value = 99;
        expect(value.limitWithin(minValue, maxValue), value);
      });
    });

    group("microseconds should return", () {
      test('zero for null values', () {
        int? value;
        expect(value.microseconds().inMicroseconds, 0);
      });

      test('zero for negative values', () {
        const value = -1;
        expect(value.microseconds().inMicroseconds, 0);
      });

      test('the actual value for zero or positive values', () {
        const value = 1;
        expect(value.microseconds().inMicroseconds, value);
      });
    });

    group("milliseconds should return", () {
      test('zero for null values', () {
        int? value;
        expect(value.milliseconds().inMilliseconds, 0);
      });

      test('zero for negative values', () {
        const value = -1;
        expect(value.milliseconds().inMilliseconds, 0);
      });

      test('the actual value for zero or positive values', () {
        const value = 1;
        expect(value.milliseconds().inMilliseconds, value);
      });
    });

    group("seconds should return", () {
      test('zero for null values', () {
        int? value;
        expect(value.seconds().inSeconds, 0);
      });

      test('zero for negative values', () {
        const value = -1;
        expect(value.seconds().inSeconds, 0);
      });

      test('the actual value for zero or positive values', () {
        const value = 1;
        expect(value.seconds().inSeconds, value);
      });
    });

    group("minutes should return", () {
      test('zero for null values', () {
        int? value;
        expect(value.minutes().inMinutes, 0);
      });

      test('zero for negative values', () {
        const value = -1;
        expect(value.minutes().inMinutes, 0);
      });

      test('the actual value for zero or positive values', () {
        const value = 1;
        expect(value.minutes().inMinutes, value);
      });
    });

    group("hours should return", () {
      test('zero for null values', () {
        int? value;
        expect(value.hours().inHours, 0);
      });

      test('zero for negative values', () {
        const value = -1;
        expect(value.hours().inHours, 0);
      });

      test('the actual value for zero or positive values', () {
        const value = 1;
        expect(value.hours().inHours, value);
      });
    });

    group("days should return", () {
      test('zero for null values', () {
        int? value;
        expect(value.days().inDays, 0);
      });

      test('zero for negative values', () {
        const value = -1;
        expect(value.days().inDays, 0);
      });

      test('the actual value for zero or positive values', () {
        const value = 1;
        expect(value.days().inDays, value);
      });
    });
  });
}
