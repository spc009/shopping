import 'package:flutter/material.dart';
import 'package:flutter_shopping/models/Product.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../constants.dart';
import '../../../models/Saved_products.dart';

class ProductTitleWithImage extends StatefulWidget {
  const ProductTitleWithImage({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  State<ProductTitleWithImage> createState() => _ProductTitleWithImageState();
}

class _ProductTitleWithImageState extends State<ProductTitleWithImage> {
  @override
  Widget build(BuildContext context) {
    Color heart_color = kTextLightColor;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Hero(
                tag: "${widget.product.id}",
                child: Image.network(
                  widget.product.image_url,
                  fit: BoxFit.fill,
                )),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            widget.product.name,
            style: Theme.of(context)
                .textTheme
                .headline4
                .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: kDefaultPaddin),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                        text: "Price\n", style: TextStyle(color: Colors.black)),
                    TextSpan(
                      text: "\$${widget.product.price}",
                      style: Theme.of(context).textTheme.headline4.copyWith(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 130),
              Container(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: FaIcon(
                    FontAwesomeIcons.solidHeart,
                    color: heart_color,
                  ),
                  onPressed: () {
                    saved_Product(widget.product);
                    setState(() {
                      if (heart_color == kTextLightColor)
                        heart_color = Colors.red;
                      else
                        heart_color = kTextLightColor;
                    });
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
