import 'package:olive/extensions/iterable_projection_extensions.dart';
import 'package:test/test.dart';

void main() {
  group("IterableProjectionExtensions", () {
    group("mapIndex should return", () {
      test('an iterable with the same length', () {
        final value = [null, 10, null];
        final projectedValue = value.mapIndex((idx, x) => x);
        expect(
          projectedValue.length,
          equals(value.length),
        );
      });

      test('correct indexes', () {
        final value = [null, 10, null];
        final projectedValue = value.mapIndex((idx, x) => idx);
        expect(
          projectedValue,
          containsAllInOrder([0, 1, 2]),
        );
      });
    });
  });
}
