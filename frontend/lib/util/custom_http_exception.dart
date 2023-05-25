class CustomHttpException implements Exception {
  final String message;
  final int statusCode;

  CustomHttpException(this.message, this.statusCode);

  @override
  String toString() {
    return message;
  }
}
