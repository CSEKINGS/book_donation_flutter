/// base custom exception
class CustomException implements Exception {
  /// creates a CustomException with optional error[_message], [_prefix]
  CustomException([this._message, this._prefix]);

  final String? _message;
  final dynamic _prefix;

  /// returns string
  @override
  String toString() {
    return '$_prefix$_message';
  }
}

/// throws fetch data exception
class FetchDataException extends CustomException {
  /// creates a FetchDataException with optional error[message]
  FetchDataException([String? message])
      : super(message, 'Error During Communication: ');
}

/// throws bad request exception
class BadRequestException extends CustomException {
  /// creates a BadRequestException with optional error[message]
  BadRequestException([message]) : super(message, 'Invalid Request: ');
}

/// throws unauthorised exception
class UnauthorisedException extends CustomException {
  /// creates a UnauthorisedException with optional error[message]
  UnauthorisedException([message]) : super(message, 'Unauthorised: ');
}

/// throws invalid input exception
class InvalidInputException extends CustomException {
  /// creates a InvalidInputException with optional error[message]
  InvalidInputException([String? message]) : super(message, 'Invalid Input: ');
}
