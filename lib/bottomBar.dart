import 'package:flutter/material.dart';
import 'package:flutter_shopping/screens/Cart/cart_screen.dart';
import 'package:flutter_shopping/screens/Saved/saved_screen.dart';
import 'package:flutter_shopping/screens/home/home_screen.dart';
import 'package:flutter_shopping/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      // notchMargin: 5,
      color: Color(0xFFFFFFFF),

      child: Container(
        height: 65,
        child: Row(
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: [
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.home, color: kTextLightColor),
                  // By default our  icon color is white
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ),
                    );
                  },
                ),
                Text("Home")
              ],
            ),
            Column(
              children: [
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.solidHeart,
                      color: kTextLightColor),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SavedPage(),
                      ),
                    );
                  },
                ),
                Text("Saved")
              ],
            ),
            Column(
              children: [
                IconButton(
                  icon: FaIcon(
                    FontAwesomeIcons.shoppingCart,
                    color: kTextLightColor,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CartPage(),
                      ),
                    );
                  },
                ),
                Text("Cart")
              ],
            ),
          ],
        ),
      ),
    );
  }
}
