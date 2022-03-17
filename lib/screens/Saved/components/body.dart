import 'package:flutter/material.dart';
import 'package:flutter_shopping/constants.dart';
import 'package:flutter_shopping/models/Saved_products.dart';
import 'package:flutter_shopping/screens/details/details_screen.dart';
import 'package:flutter_shopping/screens/Saved/components/item_card.dart';

import '../../../models/Saved_products.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text(
            "Saved",
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 20),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: GridView.builder(
                itemCount: saved.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: kDefaultPaddin,
                  crossAxisSpacing: kDefaultPaddin,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) => ItemCard(
                      product: saved[index],
                      press: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsScreen(
                              product: saved[index],
                            ),
                          )),
                    )),
          ),
        ),
      ],
    );
  }
}
