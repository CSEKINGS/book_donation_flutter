import 'dart:convert';

/// user data class
class User {
  /// default constructor
  User({
    required this.name,
    required this.photo,
    required this.email,
    required this.password,
    required this.mobileNo,
    required this.address,
    required this.about,
  });

  /// used to create a object from a map
  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      name: map['name'],
      photo: map['photo'],
      email: map['email'],
      password: map['password'],
      mobileNo: map['mobileNo'],
      address: map['address'],
      about: map['about'],
    );
  }

  /// convert the json which we got from the server to map
  factory User.fromJson(String source) => User.fromMap(json.decode(source));

  /// name of the user
  final String name;

  /// photo of the user
  final String photo;

  /// user email id
  final String email;

  /// user password
  final String password;

  /// user mobileno
  final String mobileNo;

  /// user address
  final String address;

  /// about the user
  final String about;

  /// to map method to create a map from the object
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'photo': photo,
      'email': email,
      'password': password,
      'mobileNo': mobileNo,
      'address': address,
      'about': about,
    };
  }

  /// convert the map to json to send data to server
  String toJson() => json.encode(toMap());
}
