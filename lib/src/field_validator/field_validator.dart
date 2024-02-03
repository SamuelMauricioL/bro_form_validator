abstract class FieldValidator<T> {
  FieldValidator(this.errorText);

  /// the errorText to display when the validation fails
  final String errorText;

  /// checks the input against the given conditions
  bool isValid(T value);

  /// call is a special function that makes a class callable
  /// returns null if the input is valid otherwise
  /// it returns the provided error errorText
  String? call(T value) {
    return isValid(value) ? null : errorText;
  }
}
