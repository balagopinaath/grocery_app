import 'package:flutter/material.dart';

import 'package:grocery_app/core/components/app_back_button.dart';
import 'package:grocery_app/views/review/components/review_lists.dart';
import 'package:grocery_app/views/review/components/review_overview.dart';

class ReviewPage extends StatelessWidget {
  const ReviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBackButton(),
        title: const Text('Review'),
      ),
      body: const Column(
        children: [
          ReviewOverview(),
          Divider(thickness: 0.1),
          ReviewLists(),
        ],
      ),
    );
  }
}
