import 'package:flutter/material.dart';
import 'package:flutter_shopping/constants.dart';
import 'package:flutter_shopping/models/Product.dart';
import 'package:flutter_shopping/screens/details/details_screen.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Body extends StatelessWidget {
  final String price;
  Body(this.price);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text(
            "Checkout",
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        // Categories(),
        SizedBox(height: 20),
        Container(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.symmetric(),
            child: Column(
              children: [
                QrImage(
                  data: 'https://payment.spw.challenge/checkout?price=${price}',
                  version: QrVersions.auto,
                  size: 300.0,
                ),
                SizedBox(height: 50),
                Text(
                  "Scan & Pay",
                  style: TextStyle(
                      fontSize: 50,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 50),
                Text('\$${price}',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
