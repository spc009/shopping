import 'package:flutter/material.dart';
import 'package:flutter_shopping/models/Cart.dart';
import 'package:flutter_shopping/models/Product.dart';
import 'package:flutter_shopping/models/Saved_products.dart';
import 'package:flutter_shopping/screens/Cart/cart_screen.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../constants.dart';
import '../../details/components/cart_counter.dart';
import 'body.dart';

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
    return Slidable(
      // height: 155,
      endActionPane: ActionPane(
        motion: ScrollMotion(),
        children: [
          SlidableAction(
            onPressed: donothing,
            backgroundColor: Color(0xFFFE4A49),
            foregroundColor: Colors.white,
            icon: FontAwesomeIcons.trash,
            label: 'Delete',
          ),
        ],
      ),
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
                // child: Hero(
                //   tag: "${widget.product.id}",
                child: Image.network(
                  widget.product.image_url,
                  fit: BoxFit.fill,
                ),
                // ),
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

  void donothing(BuildContext context) {
    carts_remove(widget.product);
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => CartPage(),
        ));
  }
}
