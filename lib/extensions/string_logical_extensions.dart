import 'dart:core';

extension StringExtensions on String? {
  /// Whether this string is null or empty.
  bool get isEmptyOrNull => this?.isEmpty ?? true;

  /// Whether this string is not null and empty.
  bool get isNotEmptyAndNull => !isEmptyOrNull;
}
