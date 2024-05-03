// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

<<<<<<< HEAD
import 'package:amazon_clone_app/models/rating.dart';

=======
>>>>>>> d7a33fe9b5ba06db376941381a2dc7db2c79c6ea
class Product {
  final String name;
  final String description;
  final double quantity;
  final List<String> images;
  final String category;
  final double price;
  final String? id;
<<<<<<< HEAD
  final List<Rating>? rating;
=======
>>>>>>> d7a33fe9b5ba06db376941381a2dc7db2c79c6ea

  Product({
    required this.name,
    required this.description,
    required this.quantity,
    required this.images,
    required this.category,
    required this.price,
    this.id,
<<<<<<< HEAD
    this.rating,
  });

  Map<String, dynamic> toMap() {
    return {
=======
  });

  Map<String, dynamic> toMap() {
    return{
>>>>>>> d7a33fe9b5ba06db376941381a2dc7db2c79c6ea
      'name': name,
      'description': description,
      'quantity': quantity,
      'images': images,
      'category': category,
      'price': price,
      'id': id,
<<<<<<< HEAD
      'rating': rating,
=======
>>>>>>> d7a33fe9b5ba06db376941381a2dc7db2c79c6ea
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      name: map['name'] ?? '',
      description: map['description'] ?? '',
      quantity: map['quantity']?.toDouble() ?? 0.0,
      images: List<String>.from(map['images']),
      category: map['category'] ?? '',
      price: map['price']?.toDouble() ?? 0.0,
      id: map['_id'],
<<<<<<< HEAD
      rating: map['ratings'] != null
          ? List<Rating>.from(map['ratings']?.map((x) => Rating.fromMap(x)))
          : null,
=======
>>>>>>> d7a33fe9b5ba06db376941381a2dc7db2c79c6ea
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) =>
      Product.fromMap(json.decode(source));
}
