import 'package:flutter/material.dart';
import 'package:flutter_shopping/bottomBar.dart';
import 'package:flutter_shopping/screens/Saved/components/body.dart';

class SavedPage extends StatelessWidget {
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
