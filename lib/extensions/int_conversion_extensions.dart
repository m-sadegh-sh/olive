import 'dart:core';

import 'package:olive/extensions/int_constraint_extensions.dart';

extension NullableIntConversionExtensions on int? {
  /// Creates a new [Duration] object using this value as its microseconds part
  Duration microseconds() => Duration(microseconds: limitMin(0));

  /// Creates a new [Duration] object using this value as its milliseconds part
  Duration milliseconds() => Duration(milliseconds: limitMin(0));

  /// Creates a new [Duration] object using this value as its seconds part
  Duration seconds() => Duration(seconds: limitMin(0));

  /// Creates a new [Duration] object using this value as its minutes part
  Duration minutes() => Duration(minutes: limitMin(0));

  /// Creates a new [Duration] object using this value as its hours part
  Duration hours() => Duration(hours: limitMin(0));

  /// Creates a new [Duration] object using this value as its days part
  Duration days() => Duration(days: limitMin(0));
}
