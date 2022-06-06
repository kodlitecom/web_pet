import 'package:flutter/material.dart';

class Product {
  final String? image, title, description;
  final int? id;

  Product({
    this.id,
    this.title,
    this.description,
    this.image,
  });
}

List<Product> products = [
  Product(
    id: 1,
    title: "Dog Bed Need Space",
    description: "CHF54.5",
    image: "assets/images/dog.jpg",
  ),
  Product(
    id: 2,
    title: "Fish",
    description: "CHF54.5",
    image: "assets/images/cat.jpg",
  ),
  Product(
    id: 3,
    title: "Bird",
    description: "CHF54.5",
    image: "assets/images/dog.jpg",
  ),
  Product(
    id: 4,
    title: "Cat",
    description: "CHF54.5",
    image: "assets/images/cat.jpg",
  ),
];
