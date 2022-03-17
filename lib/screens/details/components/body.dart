import 'package:flutter/material.dart';
import 'package:flutter_shopping/models/Product.dart';

import 'add_to_cart.dart';
import 'product_title_with_image.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // It provide us total height and width
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ProductTitleWithImage(product: product),
          AddToCart(product: product),
        ],
      ),
    );
  }
}
