import 'dart:core';

import 'package:olive/extensions/double_constraint_extensions.dart';

extension NullableDoubleConversionExtensions on double? {
  /// <summary>
  /// Creates a new [Duration] object using this value as its milliseconds part
  /// </summary>
  Duration milliseconds() => _toDuration(Duration.microsecondsPerMillisecond);

  /// <summary>
  /// Creates a new [Duration] object using this value as its seconds part
  /// </summary>
  Duration seconds() => _toDuration(Duration.microsecondsPerSecond);

  /// <summary>
  /// Creates a new [Duration] object using this value as its minutes part
  /// </summary>
  Duration minutes() => _toDuration(Duration.microsecondsPerMinute);

  /// <summary>
  /// Creates a new [Duration] object using this value as its hours part
  /// </summary>
  Duration hours() => _toDuration(Duration.microsecondsPerHour);

  /// <summary>
  /// Creates a new [Duration] object using this value as its days part
  /// </summary>
  Duration days() => _toDuration(Duration.microsecondsPerDay);

  Duration _toDuration(int multiplier) => Duration(
        microseconds: (limitMin(0) * multiplier).round(),
      );
}
