/// a special match validator to check
/// if the input equals another provided value
class MatchValidator {
  MatchValidator({required this.errorText});
  final String errorText;

  String? validateMatch(String value, String value2) {
    return value == value2 ? null : errorText;
  }
}
