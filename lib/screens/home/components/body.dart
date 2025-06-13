import 'package:application/constants.dart';
import 'package:application/models/product.dart';
import 'package:application/screens/details/details_screen.dart';
import 'package:application/screens/home/components/categories.dart';
import 'package:application/screens/home/components/item_card.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            'Women',
            style: Theme.of(
              context,
            ).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: GridView.builder(
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: kDefaultPadding,
                crossAxisSpacing: kDefaultPadding,
                childAspectRatio: 0.7,
              ),

              itemBuilder:
                  (context, index) =>
                      ItemCard(product: products[index], press: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(product: products[index])));
                      }),
            ),
          ),
        ),
      ],
    );
  }
}


