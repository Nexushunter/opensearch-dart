class IndexException implements Exception {
  final String message;
  IndexException(this.message);

  factory IndexException.conflict() => IndexException('index exists');
  factory IndexException.invalidIndexPrefix() =>
      IndexException('index must not start with _ or - ');
  factory IndexException.indexNameContainsCapitals() =>
      IndexException('index name cannot contain capitals.');
  factory IndexException.invalidNameFormat() => IndexException(
      'index names cannot contain: comma, space, : ," ,* ,+ ,/ ,\\ ,| ,? ,# ,>,<');

  @override
  String toString() => message;
}
