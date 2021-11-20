import 'dart:convert';

class LoginResponse {
  final bool auth;
  final String message;
  final String token;
  LoginResponse(
      {required this.auth, required this.message, required this.token});

  /// factory convert from map
  factory LoginResponse.fromMap(Map<String, dynamic> map) {
    return LoginResponse(
      auth: map['auth'],
      message: map['message'],
      token: map['token'],
    );
  }

  /// factory from json
  factory LoginResponse.fromJson(String source) =>
      LoginResponse.fromMap(json.decode(source));
}
