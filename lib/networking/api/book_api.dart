import 'dart:convert';

import 'package:book_donation/models/book.dart';
import 'package:http/http.dart' as http;



class BookApi {
  /// create book api
  static Future<String> create(Book book) async {
    var res = await http.post(
        Uri.parse('https://book-donation-api.herokuapp.com/api/books/create'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: book.toJson());
    if (res.statusCode == 200) return 'valid';

    return 'invalid';
  }

  /// edit book api
  static Future<String> edit(Book book) async {
    var res = await http.put(
        Uri.parse('https://book-donation-api.herokuapp.com/api/books/create'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: book.toJson());
    if (res.statusCode == 200) return 'valid';

    return 'invalid';
  }

  /// deletes the book associated with the bookid
  static Future<String> delete(String bookid) async {
    var res = await http.post(
      Uri.parse('https://book-donation-api.herokuapp.com/api/books/delete'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, dynamic>{'bookid': bookid}),
    );
    if (res.statusCode == 200) return 'valid';

    return 'invalid';
  }

  /// edit book api
  static Future<String> getLocations() async {
    var res = await http.get(
      Uri.parse('https://book-donation-api.herokuapp.com/api/books/locations'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',

        // TODO: Send token
      },
    );
    if (res.statusCode == 200) return 'valid';

    return 'invalid';
  }

  /// fetches book details associated with the bookid
  static Future<String> getDetails(String bookid) async {
    var res = await http.post(
      Uri.parse('https://book-donation-api.herokuapp.com/api/books/create'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',

        // TODO: Send token
      },
      body: jsonEncode(<String, dynamic>{'bookid': bookid}),
    );
    if (res.statusCode == 200) return 'valid';

    return 'invalid';
  }

  /// fetches book details associated with the bookid
  static Future<String> buy(String bookid) async {
    var res = await http.post(
      Uri.parse('https://book-donation-api.herokuapp.com/api/buy/request'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',

        // TODO: Send token
      },
      body: jsonEncode(<String, dynamic>{'bookid': bookid}),
    );
    if (res.statusCode == 200) return 'valid';

    return 'invalid';
  }

  /// gets the status of book whether someone want it or not
  static Future<String> getBuyStatus(String bookid) async {
    var res = await http.post(
      Uri.parse('https://book-donation-api.herokuapp.com/api/buy/owner'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',

        // TODO: Send token
      },
      body: jsonEncode(<String, dynamic>{'bookid': bookid}),
    );
    if (res.statusCode == 200) return 'valid';

    return 'invalid';
  }
}
