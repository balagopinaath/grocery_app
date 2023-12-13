import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_app/core/constants/app_icons.dart';

import 'package:grocery_app/core/constants/app_defaults.dart';
import 'package:grocery_app/core/routes/app_routes.dart';
import 'package:grocery_app/views/home/components/ad_space.dart';
import 'package:grocery_app/views/home/components/our_new_item.dart';
import 'package:grocery_app/views/home/components/popular_packs.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              leading: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.drawerPage);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFF2F6F3),
                    shape: const CircleBorder(),
                  ),
                  child: SvgPicture.asset(AppIcons.sidebarIcon),
                ),
              ),
              floating: true,
              title: SvgPicture.asset(
                "assets/images/app_logo.svg",
                height: 32,
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 8, top: 4, bottom: 4),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, AppRoutes.search);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFF2F6F3),
                      shape: const CircleBorder(),
                    ),
                    child: SvgPicture.asset(AppIcons.search),
                  ),
                ),
              ],
            ),
            const SliverToBoxAdapter(
              child: AdSpace(),
            ),
            const SliverToBoxAdapter(
              child: PopularPacks(),
            ),
            const SliverPadding(
              padding: EdgeInsets.symmetric(vertical: AppDefaults.padding),
              sliver: SliverToBoxAdapter(
                child: OurNewItem(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
