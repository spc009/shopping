import 'package:flutter/material.dart';
import 'package:flutter_shopping/bottomBar.dart';
import 'package:flutter_shopping/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(), // call App bar
      body: Body(), // call Body
      bottomNavigationBar: BottomBar(), // call bottom bar
    );
  }

  // App bar method
  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
    );
  }
}
