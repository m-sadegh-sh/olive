import 'package:olive/extensions/list_filtering_extensions.dart';
import 'package:test/test.dart';

void main() {
  group("ListFilteringExtensions", () {
    group("indexOrNull should return", () {
      test('null as it finds nothing that satisfies the provided [test]', () {
        final value = [2, 10, 12];
        final filteredValue = value.indexOrNull((x) => x == 15);
        expect(
          filteredValue,
          isNull,
        );
      });

      test('the expected index', () {
        final value = [2, 10, 2];
        final filteredValue = value.indexOrNull((x) => x == 2);
        expect(
          filteredValue,
          equals(0),
        );
      });
    });

    group("lastIndexOrNull should return", () {
      test('null as it finds nothing that satisfies the provided [test]', () {
        final value = [2, 10, 12];
        final filteredValue = value.lastIndexOrNull((x) => x == 15);
        expect(
          filteredValue,
          isNull,
        );
      });

      test('the expected index', () {
        final value = [2, 10, 2];
        final filteredValue = value.lastIndexOrNull((x) => x == 2);
        expect(
          filteredValue,
          equals(2),
        );
      });
    });
  });
}
