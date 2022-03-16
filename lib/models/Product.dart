// ignore_for_file: non_constant_identifier_names

import 'dart:convert';
import 'package:flutter/services.dart';

class Product {
  final int id;
  final String name, image_url;
  final double price;
  bool saved;
  Product({this.id, this.name, this.image_url, this.price});
}

// Future<List<Product>> readJson() async {
//   final String response =
//       await rootBundle.loadString('../../assets/json/Products.json');
//   final data = await json.decode(response);

//   return data["product_items"];
// }

// List<Product> products = readJson() as List<Product>;

List<Product> products = [
  Product(
      id: 1,
      name: "Puma White (New)",
      image_url:
          "https://images.unsplash.com/photo-1608231387042-66d1773070a5?fit=crop&w=300&q=80",
      price: 250.00),
  Product(
      id: 2,
      name: "iPhone 12 Pro Black Edition",
      image_url:
          "https://images.unsplash.com/photo-1573148195900-7845dcb9b127?fit=crop&w=300&q=80",
      price: 1200.00),
  Product(
      id: 3,
      name: "Nintendo Switch 2021",
      image_url:
          "https://images.unsplash.com/photo-1578303512597-81e6cc155b3e?fit=crop&w=300&q=80",
      price: 599.00),
  Product(
      id: 4,
      name: "Black + Decker",
      image_url:
          "https://images.unsplash.com/photo-1574269909862-7e1d70bb8078?fit=crop&w=300&q=80",
      price: 149.00),
  Product(
      id: 5,
      name: "White Neat Mug",
      image_url:
          "https://images.unsplash.com/photo-1514228742587-6b1558fcca3d?fit=crop&w=300&q=80",
      price: 35.00),
  Product(
      id: 6,
      name: "SMEG Oven - Winter Collection",
      image_url:
          "https://images.unsplash.com/photo-1586208958839-06c17cacdf08?fit=crop&w=300&q=80",
      price: 8299.00),
  Product(
      id: 7,
      name: "Black Table Fan with Pink Moody Cat",
      image_url:
          "https://images.unsplash.com/photo-1618941716939-553df3c6c278?fit=crop&w=300&q=80",
      price: 79.00),
];