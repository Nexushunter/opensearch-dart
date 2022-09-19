class SearchException implements Exception {
  final String message;
  @override
  String toString() {
    return message;
  }

  SearchException(this.message);

  factory SearchException.invalidOperator(String operator) =>
      SearchException('Invalid search operator: $operator');
}
