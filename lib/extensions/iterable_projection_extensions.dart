extension NullableIterableProjectionExtensions<T> on Iterable<T?> {
  /// The current elements of this iterable modified by [toElement].
  Iterable<T?> mapIndex(T? Function(int idx, T? x) toElement) {
    var index = 0;
    return map((x) => toElement(index++, x));
  }
}
