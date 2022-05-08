import 'dart:core';

extension StringExtensions on String? {
  /// <summary>
  /// Whether this string is null or empty.
  /// </summary>
  bool get isEmptyOrNull => this?.isEmpty ?? true;

  /// <summary>
  /// Whether this string is not null and empty.
  /// </summary>
  bool get isNotEmptyAndNull => !isEmptyOrNull;
}
