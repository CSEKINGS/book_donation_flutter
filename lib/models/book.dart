import 'dart:convert';

/// book data class
class Book {
  /// default constructor
  Book({
    required this.name,
    required this.author,
    required this.category,
    required this.description,
    required this.photo,
  });

  /// used to create a object from a map
  factory Book.fromMap(Map<String, dynamic> map) {
    return Book(
      name: map['name'],
      author: map['author'],
      category: map['category'],
      description: map['description'],
      photo: map['photo'],
    );
  }

  /// convert the json which we got from the server to map
  factory Book.fromJson(String source) => Book.fromMap(json.decode(source));

  /// book name
  String name;

  /// book author name
  String author;

  /// category to which the book belongs
  String category;

  /// description the book
  String description;

  /// photo of the book
  String photo;

  /// to map method to create a map from the object
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'author': author,
      'category': category,
      'description': description,
      'photo': photo,
    };
  }

  /// convert the map to json to send data to server
  String toJson() => json.encode(toMap());
}
