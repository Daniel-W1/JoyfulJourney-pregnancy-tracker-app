import 'dart:async';

class JJTimeoutException extends TimeoutException {
  JJTimeoutException() : super('Request timed out', Duration(seconds: 5));
}
 