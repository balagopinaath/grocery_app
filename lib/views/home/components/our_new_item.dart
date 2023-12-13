import 'package:flutter/material.dart';

import 'package:grocery_app/core/components/product_tile_square.dart';
import 'package:grocery_app/core/components/title_and_action_button.dart';
import 'package:grocery_app/core/constants/constants.dart';
import 'package:grocery_app/core/routes/app_routes.dart';

class OurNewItem extends StatelessWidget {
  const OurNewItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleAndActionButton(
          title: 'Our New Item',
          onTap: () => Navigator.pushNamed(context, AppRoutes.newItems),
        ),
        SingleChildScrollView(
          padding: const EdgeInsets.only(left: AppDefaults.padding),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              Dummy.products.length,
              (index) => ProductTileSquare(data: Dummy.products[index]),
            ),
          ),
        ),
      ],
    );
  }
}
