import 'dart:core';

import 'package:olive/extensions/int_constraint_extensions.dart';

extension NullableIntConversionExtensions on int? {
  /// <summary>
  /// Creates a new [Duration] object using this value as its microseconds part
  /// </summary>
  Duration microseconds() => Duration(microseconds: limitMin(0));

  /// <summary>
  /// Creates a new [Duration] object using this value as its milliseconds part
  /// </summary>
  Duration milliseconds() => Duration(milliseconds: limitMin(0));

  /// <summary>
  /// Creates a new [Duration] object using this value as its seconds part
  /// </summary>
  Duration seconds() => Duration(seconds: limitMin(0));

  /// <summary>
  /// Creates a new [Duration] object using this value as its minutes part
  /// </summary>
  Duration minutes() => Duration(minutes: limitMin(0));

  /// <summary>
  /// Creates a new [Duration] object using this value as its hours part
  /// </summary>
  Duration hours() => Duration(hours: limitMin(0));

  /// <summary>
  /// Creates a new [Duration] object using this value as its days part
  /// </summary>
  Duration days() => Duration(days: limitMin(0));
}
