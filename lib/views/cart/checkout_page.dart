import 'package:flutter/material.dart';

import 'package:grocery_app/core/components/app_back_button.dart';
import 'package:grocery_app/core/constants/app_defaults.dart';
import 'package:grocery_app/core/routes/app_routes.dart';
import 'package:grocery_app/views/cart/components/checkout_address_selector.dart';
import 'package:grocery_app/views/cart/components/checkout_card_details.dart';
import 'package:grocery_app/views/cart/components/checkout_payment_systems.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBackButton(),
        title: const Text('Checkout'),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            AddressSelector(),
            PaymentSystem(),
            CardDetails(),
            PayNowButton(),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}

class PayNowButton extends StatelessWidget {
  const PayNowButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(AppDefaults.padding),
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, AppRoutes.orderSuccessfull);
          },
          child: const Text('Pay Now'),
        ),
      ),
    );
  }
}
