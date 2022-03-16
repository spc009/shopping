import 'package:flutter/material.dart';
import 'package:flutter_shopping/models/Product.dart';
import 'package:flutter_shopping/models/Saved_products.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../constants.dart';
import '../../details/components/cart_counter.dart';
import '../../details/components/counter_with_fav_btn.dart';

class ItemColumn extends StatefulWidget {
  final Product product;
  final Function press;
  const ItemColumn({
    Key key,
    this.product,
    this.press,
  }) : super(key: key);

  @override
  State<ItemColumn> createState() => _ItemColumnState();
}

class _ItemColumnState extends State<ItemColumn> {
  @override
  Widget build(BuildContext context) {
    Color heart_color = kTextLightColor;
    return Container(
      height: 155,
      // decoration: const BoxDecoration(
      //   border: Border(
      //     top: BorderSide(width: 1.0, color: Color(0xFF000000)),
      //     left: BorderSide(width: 1.0, color: Color(0xFF000000)),
      //     right: BorderSide(width: 1.0, color: Color(0xFF000000)),
      //     bottom: BorderSide(width: 1.0, color: Color(0xFF000000)),
      //   ),
      // ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  // borderRadius: BorderRadius.circular(16),
                ),
                child: Hero(
                  tag: "${widget.product.id}",
                  child: Image.network(
                    widget.product.image_url,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(),
                      child: Text(
                        // products is out demo list
                        widget.product.name,
                        style: TextStyle(color: kTextLightColor, fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(),
                      child: Text(
                        "\$${widget.product.price}",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 20),
                    CartCounter(),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 5),
        ],
      ),
    );
  }
}
