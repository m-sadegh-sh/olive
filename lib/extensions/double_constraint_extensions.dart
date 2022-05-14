import 'dart:core';

extension DoubleConstraintExtensions on double {
  /// Determines the minimum limitation of two values.
  /// <param name="minValue">If this value is greater than {minValue}, this value is returned, owherwise, {minvalue} is returned.</param>
  double limitMin(double minValue) => this < minValue ? minValue : this;

  /// Determines the maximum limitation of two values.
  /// <param name="maxValue">If this value is smaller than {maxValue}, this value is returned, owherwise, {maxvalue} is returned.</param>
  double limitMax(double maxValue) => this > maxValue ? maxValue : this;

  /// Determines the minimum and maximum limitation of two values.
  /// If this value is between {minValue} and {maxValue}, this value is returned. If this value is smaller than {minvalue}, {minvalue} is returned. If this value is greater than {maxvalue}, {maxvalue} is returned.
  /// <param name="minValue">Determines the minimum value for comparing.</param>
  /// <param name="maxValue">Determines the maximum value for comparing.</param>
  double limitWithin(double minValue, double maxValue) =>
      limitMin(minValue).limitMax(maxValue);
}

extension NullableDoubleExtensions on double? {
  /// Determines the minimum limitation of two values.
  /// <param name="minValue">If this value is greater than {minValue}, this value is returned, owherwise, {minvalue} is returned.</param>
  double limitMin(double minValue) => (this ?? minValue).limitMin(minValue);

  /// Determines the maximum limitation of two values.
  /// <param name="maxValue">If this value is smaller than {maxValue}, this value is returned, owherwise, {maxvalue} is returned.</param>
  double limitMax(double maxValue) => (this ?? maxValue).limitMax(maxValue);

  /// Determines the minimum and maximum limitation of two values.
  /// If this value is between {minValue} and {maxValue}, this value is returned. If this value is smaller than {minvalue}, {minvalue} is returned. If this value is greater than {maxvalue}, {maxvalue} is returned.
  /// <param name="minValue">Determines the minimum value for comparing.</param>
  /// <param name="maxValue">Determines the maximum value for comparing.</param>
  double limitWithin(double minValue, double maxValue) =>
      limitMin(minValue).limitMax(maxValue);
}
