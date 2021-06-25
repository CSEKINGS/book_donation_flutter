import 'package:flutter/material.dart';

/// data class for the book
class Book {
  /// default constructor
  Book(this.name, this.author, this.description, this.edition, this.image);

  /// name of the book
  String name;

  /// name of the book's author
  String author;

  /// description of the book
  String description;

  /// edition of the book (this property is optional)
  String edition;

  /// image of the book
  Image image;
}
