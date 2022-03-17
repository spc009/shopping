import 'package:flutter/material.dart';
import 'package:flutter_shopping/bottomBar.dart';
import 'package:flutter_shopping/constants.dart';
import 'package:flutter_shopping/models/Product.dart';
import 'package:flutter_shopping/screens/details/components/body.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // each product have a color
      backgroundColor: Colors.white,
      appBar: buildAppBar(context),
      body: Body(product: product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: FaIcon(FontAwesomeIcons.angleLeft, color: kTextLightColor),
        color: Colors.white,
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}
