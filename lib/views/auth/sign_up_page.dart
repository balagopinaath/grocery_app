import 'package:flutter/material.dart';

import 'package:grocery_app/core/constants/app_colors.dart';
import 'package:grocery_app/core/constants/app_defaults.dart';
import 'package:grocery_app/views/auth/components/sign_up_form.dart';
import 'package:grocery_app/views/auth/components/sign_up_page_header.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.scaffoldWithBoxBackground,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SignUpPageHeader(),
                SizedBox(height: AppDefaults.padding),
                SignUpForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
