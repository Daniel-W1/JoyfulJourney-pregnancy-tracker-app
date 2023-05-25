class JJHttpException implements Exception {
  JJHttpException(this.message, this.statusCode);
  final String message;
  final int statusCode;
}
