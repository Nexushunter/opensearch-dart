import 'dart:async';

import 'package:dio/dio.dart';

abstract class RequestSigner {
  FutureOr<RequestOptions> sign(RequestOptions options, Dio client);
}
