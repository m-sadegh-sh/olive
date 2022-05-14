import 'package:olive/extensions/stream_filtering_extensions.dart';
import 'package:test/test.dart';

Stream<int?> fakeStream() async* {
  yield null;
  yield 10;
  yield null;
}

void main() {
  group("StreamFilteringExtensions", () {
    group("exceptNull should emit", () {
      test('only 1 item for a stream of 2 null and 1 non-null items', () {
        expect(
          fakeStream().exceptNull(),
          neverEmits(isNull),
        );
        expect(
          fakeStream().exceptNull(),
          emits(10),
        );
      });
    });

    group("whereNull should emit", () {
      test('2 items for a stream of 2 null and 1 non-null items', () {
        expect(
          fakeStream().whereNull(),
          neverEmits(isNotNull),
        );
        expect(
          fakeStream().whereNull(),
          emits(null),
        );
      });
    });
  });
}
