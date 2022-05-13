import 'package:olive/extensions/iterable_filtering_extensions.dart';
import 'package:test/test.dart';

void main() {
  group("IterableFilteringExtensions", () {
    group("exceptNull should return", () {
      test('only 1 item for an iterable with 2 null and 1 non-null items', () {
        final value = [null, 10, null];
        final filteredValue = value.exceptNull();
        expect(
          filteredValue.length,
          equals(1),
        );
        expect(
          filteredValue.first,
          equals(10),
        );
      });
    });

    group("whereNull should return", () {
      test('2 items for an iterable with 2 null and 1 non-null items', () {
        final value = [null, 10, null];
        final filteredValue = value.whereNull();
        expect(
          filteredValue.length,
          equals(2),
        );
        expect(
          filteredValue.first,
          equals(null),
        );
        expect(
          filteredValue.last,
          equals(null),
        );
      });
    });
  });
}
