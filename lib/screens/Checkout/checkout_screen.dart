import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../bottomBar.dart';
import '../../constants.dart';
import 'components/body.dart';

class CheckoutScreen extends StatelessWidget {
  final String price;
  CheckoutScreen(this.price);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(this.price),
      bottomNavigationBar: BottomBar(),
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
