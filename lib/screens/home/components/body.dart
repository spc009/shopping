import 'package:flutter/material.dart';
import 'package:flutter_shopping/constants.dart';
import 'package:flutter_shopping/models/Product.dart';
import 'package:flutter_shopping/screens/details/details_screen.dart';
import 'item_card.dart';

//Body of home screen
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            //padding show screen header
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
              child: Text(
                "For You",
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20), // vertical space

            //show item feild
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
                child: GridView.builder(
                    itemCount: products.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: kDefaultPaddin,
                      crossAxisSpacing: kDefaultPaddin,
                      childAspectRatio: 0.75,
                    ),
                    //build item card
                    itemBuilder: (context, index) => ItemCard(
                          product: products[index],
                          press: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailsScreen(
                                  product: products[index],
                                ),
                              )),
                        )),
              ),
            ),
          ],
        ),
        
        
      ],
    );
  }
}
