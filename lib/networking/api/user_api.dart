import 'package:http/http.dart' as http;

class UserApi {
  static Future<String> details(String token)async {
var res = await http.get(
      Uri.parse('https://book-donation-api.herokuapp.com/api/user/detail'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',

        // TODO: Send token
      },
    );
    if (res.statusCode == 200) return 'valid';

    return 'invalid';
  }


  ///user/delete	get	bearer token required
// /user/edit	post	{"name":"","email":"","mobileNo":"","address":"","photo":""}-bearer token required
// /user/notification	get	bearer token required
// /user/wish	post	{"bookid":""}-bearer token required
// /user/wishlist	get	bearer token required
static Future<String> edit(String token)async {
var res = await http.post(
      Uri.parse('https://book-donation-api.herokuapp.com/api/user/edit'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',

        // TODO: Send body
      },
    );
    if (res.statusCode == 200) return 'valid';

    return 'invalid';
  }

  static Future<String> notification(String token)async {
var res = await http.get(
      Uri.parse('https://book-donation-api.herokuapp.com/api/user/notification'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',

        // TODO: Send token
      },
    );
    if (res.statusCode == 200) return 'valid';

    return 'invalid';
  }

  static Future<String> wishpost(String token, String bookid)async {
var res = await http.post(
      Uri.parse('https://book-donation-api.herokuapp.com/api/user/wish'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',

        // TODO: Send body
      },
    );
    if (res.statusCode == 200) return 'valid';

    return 'invalid';
  }

  static Future<String> wishlist(String token)async {
var res = await http.post(
      Uri.parse('https://book-donation-api.herokuapp.com/api/user/wishlist'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',

        // TODO: Send token
      },
    );
    if (res.statusCode == 200) return 'valid';

    return 'invalid';
  }

}
