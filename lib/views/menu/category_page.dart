import 'package:flutter/material.dart';

import 'package:grocery_app/core/components/app_back_button.dart';
import 'package:grocery_app/core/components/product_tile_square.dart';
import 'package:grocery_app/core/constants/constants.dart';

class CategoryProductPage extends StatelessWidget {
  const CategoryProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vegetables'),
        leading: const AppBackButton(),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.only(top: AppDefaults.padding),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          childAspectRatio: 0.85,
        ),
        itemCount: 16,
        itemBuilder: (context, index) {
          return ProductTileSquare(
            data: Dummy.products.first,
          );
        },
      ),
    );
  }
}
