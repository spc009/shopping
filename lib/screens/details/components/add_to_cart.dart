import 'package:flutter/material.dart';
import 'package:flutter_shopping/models/Cart.dart';
import 'package:flutter_shopping/models/Product.dart';

import '../../../constants.dart';

class AddToCart extends StatefulWidget {
  const AddToCart({
    Key key,
    this.product,
  }) : super(key: key);

  final Product product;

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Row(
        children: <Widget>[
          SizedBox(width: 50),
          Expanded(
            child: SizedBox(
              height: 50,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)),
                color: Color(0xFF000000),
                onPressed: () {
                  String alertMsg;
                  BuildContext dialogContext;
                  setState(() {
                    alertMsg = 'Added to Cart';
                    carts_add(widget.product);

                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        dialogContext = context;
                        return AlertDialog(
                          alignment: Alignment.center,
                          title: Text(
                            alertMsg,
                            textAlign: TextAlign.center,
                          ),
                        );
                      },
                    );
                  });
                },
                child: Text(
                  "Buy  Now".toUpperCase(),
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: 50),
        ],
      ),
    );
  }
}
