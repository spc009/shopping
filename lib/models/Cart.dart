import 'package:flutter_shopping/models/Product.dart';

List<Product> carts = [];
List<int> number = [];

// class Cart extends Product {
//   Product product;
//   int number;
//   Cart(this.product, this.number);
// }

class carts_add {
  carts_add(Product product) {
    if (!carts.contains(product)) {
      carts.add(product);
      number.add(1);
    } else {
      int index = carts.indexOf(product);
      number[index]++;
    }
    print(carts.length);
  }
}

class carts_remove {
  carts_remove(Product product) {
    carts.remove(product);
    print(carts.length);
  }
}

class carts_decrese {
  carts_decrese(Product product) {
    int index = carts.indexOf(product);
    if (number[index] > 1) number[index]--;
  }
}
