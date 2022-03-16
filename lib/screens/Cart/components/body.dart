import 'package:flutter/material.dart';
import 'package:flutter_shopping/constants.dart';
import 'package:flutter_shopping/screens/Cart/components/item_column.dart';
import 'package:flutter_shopping/screens/details/details_screen.dart';

import '../../../models/Product.dart';
import '../../Checkout/checkout_screen.dart';

class Body extends StatelessWidget {
  // List<double> Price;
  @override
  double totalPrice() {
    double sum = 0;
    for (int i = 0; i < products.length; i++) {
      sum += products[i].price;
    }
    return sum;
  }

  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text(
            "Cart",
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        // Categories(),
        SizedBox(height: 20),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(),
            child: ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) {
                  // Price.add(products[index].price);
                  return ItemColumn(
                    product: products[index],
                    press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsScreen(
                          product: products[index],
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ),
        Container(
          height: 70,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total : \$${totalPrice()}",
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CheckoutScreen('${totalPrice()}'),
                      ),
                    );
                  },
                  child: Text("Checkout"),
                  color: kTextLightColor,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
