import 'package:flutter/material.dart';

import 'package:grocery_app/core/components/app_back_button.dart';
import 'package:grocery_app/core/constants/app_defaults.dart';
import 'package:grocery_app/core/routes/app_routes.dart';
import 'package:grocery_app/views/cart/components/coupon_code_field.dart';
import 'package:grocery_app/views/cart/components/items_totals_price.dart';
import 'package:grocery_app/views/cart/components/single_cart_item_tile.dart';

class CartPage extends StatelessWidget {
  const CartPage({
    Key? key,
    this.isHomePage = false,
  }) : super(key: key);

  final bool isHomePage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: isHomePage
          ? null
          : AppBar(
              leading: const AppBackButton(),
              title: const Text('Cart Page'),
            ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SingleCartItemTile(),
              const SingleCartItemTile(),
              const SingleCartItemTile(),
              const CouponCodeField(),
              const ItemTotalsAndPrice(),
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(AppDefaults.padding),
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigator.pushNamed(context, AppRoutes.orderSuccessfull);
                      Navigator.pushNamed(context, AppRoutes.checkoutPage);
                    },
                    child: const Text('Checkout'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
