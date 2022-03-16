import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_shopping/models/Product.dart';
import 'package:flutter_shopping/models/Saved_products.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../constants.dart';

class ItemCard extends StatefulWidget {
  final Product product;
  final Function press;
  const ItemCard({
    Key key,
    this.product,
    this.press,
  }) : super(key: key);

  @override
  State<ItemCard> createState() => _ItemCardState();
}

Color heart_color = kTextLightColor;

class _ItemCardState extends State<ItemCard> {
  void toggle_heart() {
    String alertMsg;
    Timer timer;
    BuildContext dialogContext;
    timer = Timer(Duration(seconds: 1), () {
      setState(() {
        if (heart_color == kTextLightColor) {
          heart_color = Colors.red;
          alertMsg = 'Saved';
        } else {
          heart_color = kTextLightColor;
          alertMsg = 'Unsaved';
        }
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
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.press,
      child: Container(
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(width: 1.0, color: Color(0xFF000000)),
            left: BorderSide(width: 1.0, color: Color(0xFF000000)),
            right: BorderSide(width: 1.0, color: Color(0xFF000000)),
            bottom: BorderSide(width: 1.0, color: Color(0xFF000000)),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Hero(
                      tag: "${widget.product.id}",
                      child: Image.network(
                        widget.product.image_url,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      icon: FaIcon(
                        FontAwesomeIcons.solidHeart,
                        color: heart_color,
                      ),
                      //when press heart btn -> toggle heart color
                      onPressed: () {
                        toggle_heart();
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text(
                      // products is out demo list
                      widget.product.name,
                      style: TextStyle(color: kTextLightColor),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text(
                      "\$${widget.product.price}",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
