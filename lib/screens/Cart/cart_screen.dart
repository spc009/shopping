import 'package:flutter/material.dart';
import 'package:flutter_shopping/bottomBar.dart';
import 'package:flutter_shopping/screens/Cart/components/body.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: BottomBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
    );
  }
}
