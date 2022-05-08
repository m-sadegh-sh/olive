import 'dart:core';

extension IntExtensions on int {
  /// <summary>
  /// Determines the minimum limitation of two values.
  /// </summary>
  /// <param name="minValue">If this value is greater than {minValue}, this value is returned, owherwise, {minvalue} is returned.</param>
  int limitMin(int minValue) => this < minValue ? minValue : this;

  /// <summary>
  /// Determines the maximum limitation of two values.
  /// </summary>
  /// <param name="maxValue">If this value is smaller than {maxValue}, this value is returned, owherwise, {maxvalue} is returned.</param>
  int limitMax(int maxValue) => this > maxValue ? maxValue : this;

  /// <summary>
  /// Determines the minimum and maximum limitation of two values.
  /// If this value is between {minValue} and {maxValue}, this value is returned. If this value is smaller than {minvalue}, {minvalue} is returned. If this value is greater than {maxvalue}, {maxvalue} is returned.
  /// </summary>
  /// <param name="minValue">Determines the minimum value for comparing.</param>
  /// <param name="maxValue">Determines the maximum value for comparing.</param>
  int limitWithin(int minValue, int maxValue) =>
      limitMin(minValue).limitMax(maxValue);
}

extension NullableIntExtensions on int? {
  /// <summary>
  /// Determines the minimum limitation of two values.
  /// </summary>
  /// <param name="minValue">If this value is greater than {minValue}, this value is returned, owherwise, {minvalue} is returned.</param>
  int limitMin(int minValue) => (this ?? minValue).limitMin(minValue);

  /// <summary>
  /// Determines the maximum limitation of two values.
  /// </summary>
  /// <param name="maxValue">If this value is smaller than {maxValue}, this value is returned, owherwise, {maxvalue} is returned.</param>
  int limitMax(int maxValue) => (this ?? maxValue).limitMax(maxValue);

  /// <summary>
  /// Determines the minimum and maximum limitation of two values.
  /// If this value is between {minValue} and {maxValue}, this value is returned. If this value is smaller than {minvalue}, {minvalue} is returned. If this value is greater than {maxvalue}, {maxvalue} is returned.
  /// </summary>
  /// <param name="minValue">Determines the minimum value for comparing.</param>
  /// <param name="maxValue">Determines the maximum value for comparing.</param>
  int limitWithin(int minValue, int maxValue) =>
      limitMin(minValue).limitMax(maxValue);

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
