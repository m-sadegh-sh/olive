import 'dart:core';

extension DoubleExtensions on double {
  /// <summary>
  /// Determines the minimum limitation of two values.
  /// </summary>
  /// <param name="minValue">If this value is greater than {minValue}, this value is returned, owherwise, {minvalue} is returned.</param>
  double limitMin(double minValue) => this < minValue ? minValue : this;

  /// <summary>
  /// Determines the maximum limitation of two values.
  /// </summary>
  /// <param name="maxValue">If this value is smaller than {maxValue}, this value is returned, owherwise, {maxvalue} is returned.</param>
  double limitMax(double maxValue) => this > maxValue ? maxValue : this;

  /// <summary>
  /// Determines the minimum and maximum limitation of two values.
  /// If this value is between {minValue} and {maxValue}, this value is returned. If this value is smaller than {minvalue}, {minvalue} is returned. If this value is greater than {maxvalue}, {maxvalue} is returned.
  /// </summary>
  /// <param name="minValue">Determines the minimum value for comparing.</param>
  /// <param name="maxValue">Determines the maximum value for comparing.</param>
  double limitWithin(double minValue, double maxValue) =>
      limitMin(minValue).limitMax(maxValue);
}

extension NullableDoubleExtensions on double? {
  /// <summary>
  /// Determines the minimum limitation of two values.
  /// </summary>
  /// <param name="minValue">If this value is greater than {minValue}, this value is returned, owherwise, {minvalue} is returned.</param>
  double limitMin(double minValue) => (this ?? minValue).limitMin(minValue);

  /// <summary>
  /// Determines the maximum limitation of two values.
  /// </summary>
  /// <param name="maxValue">If this value is smaller than {maxValue}, this value is returned, owherwise, {maxvalue} is returned.</param>
  double limitMax(double maxValue) => (this ?? maxValue).limitMax(maxValue);

  /// <summary>
  /// Determines the minimum and maximum limitation of two values.
  /// If this value is between {minValue} and {maxValue}, this value is returned. If this value is smaller than {minvalue}, {minvalue} is returned. If this value is greater than {maxvalue}, {maxvalue} is returned.
  /// </summary>
  /// <param name="minValue">Determines the minimum value for comparing.</param>
  /// <param name="maxValue">Determines the maximum value for comparing.</param>
  double limitWithin(double minValue, double maxValue) =>
      limitMin(minValue).limitMax(maxValue);
}
