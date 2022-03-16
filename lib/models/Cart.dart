import 'package:flutter/material.dart';
import 'package:flutter_shopping/models/Product.dart';

List<Product> carts = [];

class carts_add {
  carts_add(Product product) {
    carts.add(product);
    print(carts.length);
  }
}

class carts_remove {
  carts_remove(Product product) {
    carts.remove(product);
    print(carts.length);
  }
}
