import 'dart:convert';

import 'package:book_donation/models/login_response.dart';
import 'package:book_donation/networking/api/response_handler.dart';
import 'package:book_donation/networking/constants.dart';
import 'package:http/http.dart' as http;
import 'package:book_donation/utils/common_utils.dart';

/// login api
Future<LoginResponse> loginAPI(String username, String password) async {
  print('logging in');
  var res = await http.post(Uri.parse('${baseUrl}auth/login'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(
          <String, dynamic>{'email': username, 'password': password}));

  // http.Response response = responseHandler(res);
  String _token = LoginResponse.fromJson(res.body).token;
  String message = LoginResponse.fromJson(res.body).message;
  bool auth = LoginResponse.fromJson(res.body).auth;
  print(res.body);

  // Write value
  await CommonUtils.storage.write(key: 'token', value: _token);

  return LoginResponse(auth: auth, message: message, token: _token);
}

/// signup api
Future<String> registerAPI(String name, String email, String password,
    String mobileNo, String address, String location) async {
  var res = await http.post(
    Uri.parse('${baseUrl}auth/register'),
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
  if (res.statusCode == 200) return res.body;

  return res.body;
}
