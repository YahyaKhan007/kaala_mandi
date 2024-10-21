class AppException implements Exception {
  final String? _message;
  final String? _prefix;
  AppException([this._message, this._prefix]);

  @override
  String toString() {
    return '$_prefix$_message';
  }
}

class InternetException extends AppException {
  InternetException([String? message]) : super(message, '');
}

class RequestTimeOut extends AppException {
  RequestTimeOut({String? message}) : super(message, '');
}
