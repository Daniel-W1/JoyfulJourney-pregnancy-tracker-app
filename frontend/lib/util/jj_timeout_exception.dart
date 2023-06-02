import 'dart:async';

class JJTimeoutException extends TimeoutException {
  JJTimeoutException() : super('Request timed out', const Duration(seconds: 5));
}

Duration jjTimeout = const Duration(seconds: 3);
