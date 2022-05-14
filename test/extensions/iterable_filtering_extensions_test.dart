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

    group("singleOrNull should return", () {
      test('an error due to matching multiple elements', () {
        final value = [2, 10, 2];
        int? filteredValue() => value.singleOrNull((x) => x == 2);
        expect(
          filteredValue,
          throwsStateError,
        );
      });

      test('null as it could not find the expected element', () {
        final value = [2, 10, 12];
        final filteredValue = value.singleOrNull((x) => x == 25);
        expect(
          filteredValue,
          isNull,
        );
      });

      test('the expected value', () {
        final value = [2, 10, 12];
        final filteredValue = value.singleOrNull((x) => x == 2);
        expect(
          filteredValue,
          equals(2),
        );
      });
    });

    group("firstOrNull should return", () {
      test('null as it could not find the expected element', () {
        final value = [
          {'id': 1, 'name': 'Joe'},
          {'id': 1, 'name': 'Dan'},
          {'id': 3, 'name': 'Mohammad'},
        ];
        final filteredValue = value.firstOrNull((x) => x!['id'] == 12);
        expect(
          filteredValue,
          isNull,
        );
      });

      test('the expected value', () {
        final value = [
          {'id': 1, 'name': 'Joe'},
          {'id': 1, 'name': 'Dan'},
          {'id': 3, 'name': 'Mohammad'},
        ];
        final filteredValue = value.firstOrNull((x) => x!['id'] == 1);
        expect(
          filteredValue,
          value[0],
        );
      });
    });

    group("lastOrNull should return", () {
      test('null as it could not find the expected element', () {
        final value = [
          {'id': 1, 'name': 'Joe'},
          {'id': 1, 'name': 'Dan'},
          {'id': 3, 'name': 'Mohammad'},
        ];
        final filteredValue = value.lastOrNull((x) => x!['id'] == 12);
        expect(
          filteredValue,
          isNull,
        );
      });

      test('the expected value', () {
        final value = [
          {'id': 1, 'name': 'Joe'},
          {'id': 1, 'name': 'Dan'},
          {'id': 3, 'name': 'Mohammad'},
        ];
        final filteredValue = value.lastOrNull((x) => x!['id'] == 1);
        expect(
          filteredValue,
          value[1],
        );
      });
    });

    group("elementAtOrNull should return", () {
      test('null as it could not find anything at the expected index', () {
        final value = [2, 10, 12];
        final filteredValue = value.elementAtOrNull(3);
        expect(
          filteredValue,
          isNull,
        );
      });

      test('the expected value', () {
        final value = [2, 10, 12];
        final filteredValue = value.elementAtOrNull(2);
        expect(
          filteredValue,
          equals(12),
        );
      });
    });
  });
}
