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
    required this.coordinates,
  });

  /// factory convert from map
  factory Book.fromMap(Map<String, dynamic> map) {
    return Book(
      name: map['name'],
      author: map['author'],
      category: map['category'],
      description: map['description'],
      photo: map['photo'],
      coordinates: Coordinates.fromMap(map['coordinates']),
    );
  }

  /// factory from json
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

  ///
  Coordinates coordinates;

  /// convert to map
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'author': author,
      'category': category,
      'description': description,
      'photo': photo,
      'coordinates': coordinates.toMap(),
    };
  }

  /// to json
  String toJson() => json.encode(toMap());
}

/// coordinates class
class Coordinates {
  /// constructor
  Coordinates({
    required this.lat,
    required this.lng,
  });

  /// factory convert json to map object
  factory Coordinates.fromJson(String source) =>
      Coordinates.fromMap(json.decode(source));

  /// create json from map
  factory Coordinates.fromMap(Map<String, dynamic> map) {
    return Coordinates(
      lat: map['lat'],
      lng: map['lng'],
    );
  }

  /// latitude
  String lat;

  /// longitude
  String lng;

  /// map values
  Map<String, dynamic> toMap() {
    return {
      'lat': lat,
      'lng': lng,
    };
  }

  /// convert to json
  String toJson() => json.encode(toMap());
}
