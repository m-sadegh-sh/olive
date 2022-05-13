extension NullableIterableFilteringExtensions<T> on Iterable<T?> {
  /// <summary>
  /// Gets all non-null items of this iterable.
  /// </summary>
  Iterable<T> exceptNull() => where((x) => x != null).cast();

  /// <summary>
  /// Gets all null items of this iterable.
  /// </summary>
  Iterable<T?> whereNull() => where((x) => x == null).cast<T?>();
}
