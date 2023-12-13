import 'package:flutter/material.dart';

import 'package:grocery_app/core/components/app_back_button.dart';
import 'package:grocery_app/core/components/product_tile_square.dart';
import 'package:grocery_app/core/constants/constants.dart';

class NewItemsPage extends StatelessWidget {
  const NewItemsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Item'),
        leading: const AppBackButton(),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppDefaults.padding),
          child: GridView.builder(
            padding: const EdgeInsets.only(top: AppDefaults.padding),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 0.64,
              mainAxisSpacing: 16,
            ),
            itemCount: 8,
            itemBuilder: (context, index) {
              return ProductTileSquare(
                data: Dummy.products.first,
              );
            },
          ),
        ),
      ),
    );
  }
}
