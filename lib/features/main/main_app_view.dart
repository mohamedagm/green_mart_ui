import 'package:flutter/material.dart';
import 'package:green_mart/core/constants/app_assets.dart';
import 'package:green_mart/core/theme/app_colors.dart';
import 'package:green_mart/core/widgets/srcin_svg_picture.dart';
import 'package:green_mart/features/explore/views/explore_view.dart';
import 'package:green_mart/features/shop/views/shop_view.dart';
import 'package:svg_flutter/svg.dart';

class MainAppView extends StatefulWidget {
  const MainAppView({super.key});

  @override
  State<MainAppView> createState() => _MainAppViewState();
}

int currentIndex = 0;
List<Widget> viewsww = [
  ShopView(),
  ExploreView(),
  Text('CartScreen'),
  Text('FavouriteScreen'),
  Text('ProfileScreen'),
];

class _MainAppViewState extends State<MainAppView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: viewsww[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppAssets.storeSvg),
            activeIcon: SrcinSvgPicture(
              path: AppAssets.storeSvg,
              color: AppColors.primaryColor,
            ),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppAssets.exploreSvg),
            activeIcon: SrcinSvgPicture(
              path: AppAssets.exploreSvg,
              color: AppColors.primaryColor,
            ),

            label: 'Explore',
          ),

          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppAssets.cartSvg),
            activeIcon: SrcinSvgPicture(
              path: AppAssets.cartSvg,
              color: AppColors.primaryColor,
            ),

            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppAssets.heartSvg),
            activeIcon: SrcinSvgPicture(
              path: AppAssets.heartSvg,
              color: AppColors.primaryColor,
            ),

            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppAssets.userSvg),
            activeIcon: SrcinSvgPicture(
              path: AppAssets.userSvg,
              color: AppColors.primaryColor,
            ),

            label: 'Account',
          ),
        ],
      ),
    );
  }
}
