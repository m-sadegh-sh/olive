extension NullableIterableFilteringExtensions<T> on Iterable<T?> {
  /// Returns a new [Iterable] with all elements that are not null.
  Iterable<T> exceptNull() => where((x) => x != null).cast();

  /// Returns a new [Iterable] with all elements that are null.
  Iterable<T?> whereNull() => where((x) => x == null).cast<T?>();

  /// Filters this iterable with all elements that satisfy the predicate [test].
  /// Throws a [StateError] if the filtered iterable contains more than one element. Otherwise returns the only remaining element or null.
  T? singleOrNull(bool Function(T? element) test) {
    final results = where(test);

    if (results.isEmpty) {
      return null;
    }

    if (results.length > 1) {
      throw StateError('More than one item found.');
    }

    return results.first;
  }

  /// Returns the first element or null.
  T? firstOrNull(bool Function(T?) test) {
    final results = where(test);

    if (results.isEmpty) {
      return null;
    }

    return results.first;
  }

  /// Returns the last element or null.
  T? lastOrNull(bool Function(T?) test) {
    final results = where(test);

    if (results.isEmpty) {
      return null;
    }

    return results.last;
  }

  /// Returns the [index]th element or null.
  T? elementAtOrNull(int index) {
    if (index >= length) {
      return null;
    }

    return elementAt(index);
  }
}
