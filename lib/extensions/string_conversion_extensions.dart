import 'dart:core';

import 'package:olive/extensions/string_logical_extensions.dart';
import 'package:olive/type_defs.dart';

extension NullableStringExtensions on String? {
  /// Gets the same string if it is not null or empty. Otherwise it returns the specified default value.
  /// <param name="defaultValue">It is returned if this string is null or empty.</param>
  String or(String defaultValue) => orProvider(() => defaultValue);

  /// Gets the same string if it is not null or empty. Otherwise it returns an empty string.
  String orEmpty() => or('');

  /// Gets the same string if it is not null or empty. Otherwise it evaluates and returns the specified default value provider.
  /// <param name="defaultValueProvider">It is evaluated and returned if this string is null or empty.</param>
  String orProvider(StringProvider defaultValueProvider) {
    return isEmptyOrNull ? defaultValueProvider() : this!;
  }
}
