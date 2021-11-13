import 'package:book_donation/networking/custom_exception.dart';
import 'package:http/http.dart' as http;

dynamic responseHandler(http.Response response) {
  switch (response.statusCode) {
    case 200:
      print(response);
      return response;
    case 400:
      throw BadRequestException(response.body.toString());
    case 401:

    case 403:
      throw UnauthorisedException(response.body.toString());
    case 500:

    default:
      throw FetchDataException(
          'Error occured while Communication with Server with StatusCode : ${response.statusCode}');
  }
}
