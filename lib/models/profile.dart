import 'package:flutter/material.dart';

/// profile data model class
class Profile {
  /// default constructor
  Profile(this.name, this.address, this.mobileNo, this.photo, this.about);

  /// name of the person
  String name;

  /// address of the person
  String address;

  /// mobile number of the person
  int mobileNo;

  /// photo of that person
  Image photo;

  /// about the person
  String about;
}
