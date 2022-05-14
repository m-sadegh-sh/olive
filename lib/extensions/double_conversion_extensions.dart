import 'dart:core';

import 'package:olive/extensions/double_constraint_extensions.dart';

extension NullableDoubleConversionExtensions on double? {
  /// Creates a new [Duration] object using this value as its milliseconds part
  Duration milliseconds() => _toDuration(Duration.microsecondsPerMillisecond);

  /// Creates a new [Duration] object using this value as its seconds part
  Duration seconds() => _toDuration(Duration.microsecondsPerSecond);

  /// Creates a new [Duration] object using this value as its minutes part
  Duration minutes() => _toDuration(Duration.microsecondsPerMinute);

  /// Creates a new [Duration] object using this value as its hours part
  Duration hours() => _toDuration(Duration.microsecondsPerHour);

  /// Creates a new [Duration] object using this value as its days part
  Duration days() => _toDuration(Duration.microsecondsPerDay);

  Duration _toDuration(int multiplier) => Duration(
        microseconds: (limitMin(0) * multiplier).round(),
      );
}
