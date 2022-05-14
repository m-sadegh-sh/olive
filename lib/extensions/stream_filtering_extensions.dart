extension NullableStreamFilteringExtensions<T> on Stream<T?> {
  /// Creates a new stream from this stream that discards null elements.
  Stream<T> exceptNull() => where((x) => x != null).cast();

  /// Creates a new stream from this stream that discards non-null elements.
  Stream<T?> whereNull() => where((x) => x == null).cast<T?>();
}
