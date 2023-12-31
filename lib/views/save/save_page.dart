import 'package:flutter/material.dart';

import 'package:grocery_app/views/save/empty_save_page.dart';

class SavePage extends StatelessWidget {
  const SavePage({
    Key? key,
    this.isHomePage = false,
  }) : super(key: key);

  final bool isHomePage;

  @override
  Widget build(BuildContext context) {
    return const EmptySavePage();
  }
}
