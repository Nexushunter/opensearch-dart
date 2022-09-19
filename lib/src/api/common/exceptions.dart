class HttpException implements Exception {
  final String message;
  HttpException._(this.message);
  factory HttpException.unauthorized() => HttpException._('unauthorized');

  factory HttpException.forbidden() => HttpException._('forbidden');

  factory HttpException.badRequest() => HttpException._('bad request');

  @override
  String toString() => message;
}
