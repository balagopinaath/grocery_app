import 'package:flutter/material.dart';

import 'package:grocery_app/core/components/product_tile_square.dart';
import 'package:grocery_app/core/constants/constants.dart';

class ProductGridView extends StatelessWidget {
  const ProductGridView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        padding: const EdgeInsets.only(top: AppDefaults.padding),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          childAspectRatio: 0.85,
        ),
        itemCount: 16,
        itemBuilder: (context, index) {
          return ProductTileSquare(data: Dummy.products.first);
        },
      ),
    );
  }
}
