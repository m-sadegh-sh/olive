extension NullableListFilteringExtensions<T> on List<T?> {
  /// The first index in the list that satisfies the provided [test] or null.
  int? indexOrNull(bool Function(T? element) test) {
    final index = indexWhere(test);

    if (index == -1) {
      return null;
    }

    return index;
  }

  /// The last index in the list that satisfies the provided [test] or null.
  int? lastIndexOrNull(bool Function(T? element) test) {
    final index = lastIndexWhere(test);

    if (index == -1) {
      return null;
    }

    return index;
  }
}
