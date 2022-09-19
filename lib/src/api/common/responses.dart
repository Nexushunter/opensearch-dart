import 'dart:async';

import 'package:dio/dio.dart';

import 'exceptions.dart';

class AcknowledgeResponse {
  final bool acknowledged;
  const AcknowledgeResponse({this.acknowledged = true});
}

FutureOr<Response> Function(DioError, StackTrace) onErrorResponse({
  required String endpoint,
}) {
  return (error, stack) {
    print('$endpoint Endpoint Exception: ${error.response?.data}');
    switch (error.response?.statusCode!) {
      case 401:
        throw HttpException.unauthorized();
      case 403:
        throw HttpException.forbidden();
      case 400:
        throw HttpException.badRequest();
      default:
        return Response(
          requestOptions: error.requestOptions,
          statusCode: error.response?.statusCode ?? 500,
          statusMessage: error.response?.statusMessage ??
              '${error.message}\n $stack', //'Unable make index request',
        );
    }
  };
}
