import 'package:flutter/material.dart';
import 'package:green_mart/core/theme/app_colors.dart';
import 'package:green_mart/core/theme/app_text_styles.dart';
import 'package:green_mart/features/favorite/favorite_item.dart';
import 'package:green_mart/features/shop/data/dummy_data.dart';

class FavouriteView extends StatelessWidget {
  const FavouriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Favourite', style: AppTextStyles.subtitle),
      ),
      body: ListView.separated(
        itemCount: allProductsList.length,
        itemBuilder: (context, index) {
          return FavouriteItemTile(productModel: allProductsList[index]);
        },
        separatorBuilder: (context, index) => const Divider(
          endIndent: 20,
          indent: 20,
          thickness: 1,
          color: AppColors.primaryColor,
        ),
      ),
    );
  }
}
