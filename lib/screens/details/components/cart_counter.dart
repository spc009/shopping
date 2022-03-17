import 'package:flutter/material.dart';
import 'package:flutter_shopping/models/Product.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../constants.dart';

class CartCounter extends StatefulWidget {
  final Product product;

  @override
  _CartCounterState createState() => _CartCounterState();
  CartCounter(this.product);
}

class _CartCounterState extends State<CartCounter> {
  // int numOfItems = carts.where((c) => c.id == widget.product.id).toList().length;
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 155,
      // alignment: Alignment.bottomCenter,
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(width: 1.0, color: Color(0xFF000000)),
          left: BorderSide(width: 1.0, color: Color(0xFF000000)),
          right: BorderSide(width: 1.0, color: Color(0xFF000000)),
          bottom: BorderSide(width: 1.0, color: Color(0xFF000000)),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          buildOutlineButton(
            icon: FontAwesomeIcons.minus,
            press: () {
              if (numOfItems > 1) {
                setState(() {
                  numOfItems--;
                });
              }
            },
          ),
          Container(
            width: 50,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              // if our item is less  then 10 then  it shows 01 02 like that
              numOfItems.toString().padLeft(2, "0"),
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          buildOutlineButton(
              icon: FontAwesomeIcons.plus,
              press: () {
                setState(() {
                  numOfItems++;
                });
              }),
        ],
      ),
    );
  }

  Container buildOutlineButton({IconData icon, Function press}) {
    return Container(
      alignment: Alignment.centerLeft,
      width: 50,
      height: 25,
      child: FlatButton(
        color: kTextLightColor,
        onPressed: press,
        child: FaIcon(
          icon,
          size: 15,
        ),
      ),
    );
  }
}
