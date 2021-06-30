import 'package:flutter/material.dart';

/// data class for the book
class Book {
  /// constructor
  Book({
    required this.id,
    required this.name,
    required this.author,
    required this.description,
    required this.edition,
    required this.image,
  });

  /// deserialize json to object
  factory Book.fromMap(Map<String, dynamic> map) {
    return Book(
      id: map['id'] as String,
      name: map['name'] as String,
      author: map['author'] as String,
      description: map['description'] as String,
      edition: map['edition'] as String,
      image: map['image'] as Image,
    );
  }

  /// unique id
  String id;

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

  ///  copy the book object and change specific value and return a new object
  Book copyWith({
    String? id,
    String? name,
    String? author,
    String? description,
    String? edition,
    Image? image,
  }) {
    return Book(
      id: id ?? this.id,
      name: name ?? this.name,
      author: author ?? this.author,
      description: description ?? this.description,
      edition: edition ?? this.edition,
      image: image ?? this.image,
    );
  }

  /// overrides the toString() to return the object as string
  /// instead of instance of the class
  @override
  String toString() {
    return 'Book{id: $id, name: $name, author: $author,'
        ' description: $description, edition: $edition, image: $image}';
  }

  /// overrides equality operator for testing
  /// check out equatable package in pub.dev
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Book &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          author == other.author &&
          description == other.description &&
          edition == other.edition &&
          image == other.image);

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      author.hashCode ^
      description.hashCode ^
      edition.hashCode ^
      image.hashCode;

  /// serialize object to json
  Map<String, dynamic> toMap() {
    // ignore: unnecessary_cast
    return {
      'id': id,
      'name': name,
      'author': author,
      'description': description,
      'edition': edition,
      'image': image,
    } as Map<String, dynamic>;
  }
}
