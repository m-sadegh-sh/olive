import 'dart:core';

extension IntConversionExtensions on int {
  /// Determines the minimum limitation of two values.
  /// <param name="minValue">If this value is greater than {minValue}, this value is returned, owherwise, {minvalue} is returned.</param>
  int limitMin(int minValue) => this < minValue ? minValue : this;

  /// Determines the maximum limitation of two values.
  /// <param name="maxValue">If this value is smaller than {maxValue}, this value is returned, owherwise, {maxvalue} is returned.</param>
  int limitMax(int maxValue) => this > maxValue ? maxValue : this;

  /// Determines the minimum and maximum limitation of two values.
  /// If this value is between {minValue} and {maxValue}, this value is returned. If this value is smaller than {minvalue}, {minvalue} is returned. If this value is greater than {maxvalue}, {maxvalue} is returned.
  /// <param name="minValue">Determines the minimum value for comparing.</param>
  /// <param name="maxValue">Determines the maximum value for comparing.</param>
  int limitWithin(int minValue, int maxValue) =>
      limitMin(minValue).limitMax(maxValue);
}

extension NullableIntExtensions on int? {
  /// Determines the minimum limitation of two values.
  /// <param name="minValue">If this value is greater than {minValue}, this value is returned, owherwise, {minvalue} is returned.</param>
  int limitMin(int minValue) => (this ?? minValue).limitMin(minValue);

  /// Determines the maximum limitation of two values.
  /// <param name="maxValue">If this value is smaller than {maxValue}, this value is returned, owherwise, {maxvalue} is returned.</param>
  int limitMax(int maxValue) => (this ?? maxValue).limitMax(maxValue);

  /// Determines the minimum and maximum limitation of two values.
  /// If this value is between {minValue} and {maxValue}, this value is returned. If this value is smaller than {minvalue}, {minvalue} is returned. If this value is greater than {maxvalue}, {maxvalue} is returned.
  /// <param name="minValue">Determines the minimum value for comparing.</param>
  /// <param name="maxValue">Determines the maximum value for comparing.</param>
  int limitWithin(int minValue, int maxValue) =>
      limitMin(minValue).limitMax(maxValue);
}
