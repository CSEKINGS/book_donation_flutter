import 'dart:convert';

import 'package:http/http.dart' as http;

/// login api
Future<String> attemptLogIn(String username, String password) async {
  var res = await http.post(
      Uri.parse('https://book-donation-api.herokuapp.com/api/auth/login'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(
          <String, dynamic>{'email': username, 'password': password}));

  if (res.statusCode == 200) return 'valid';

  return res.body;
}

/// signup api
Future<String> attemptSignUp(String name, String email, String password,
    String mobileNo, String address, String location) async {
  var res = await http.post(
    Uri.parse('https://book-donation-api.herokuapp.com/api/auth/register'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, dynamic>{
      'name': name,
      'email': email,
      'password': password,
      'mobileNo': mobileNo,
      'address': address
    }),
  );
  if (res.statusCode == 200) return 'valid';

  return 'invalid';
}
