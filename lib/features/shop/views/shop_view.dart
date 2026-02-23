import 'package:flutter/material.dart';
import 'package:green_mart/core/constants/app_assets.dart';
import 'package:green_mart/core/functions/nav.dart';
import 'package:green_mart/core/theme/app_colors.dart';
import 'package:green_mart/core/widgets/app_text_form_field.dart';
import 'package:green_mart/core/widgets/srcin_svg_picture.dart';
import 'package:green_mart/features/shop/views/search_view.dart';
import 'package:green_mart/features/shop/widgets/all_products_builder.dart';
import 'package:green_mart/features/shop/widgets/best_selling_builder.dart';
import 'package:green_mart/features/shop/widgets/offers_builder.dart';

class ShopView extends StatelessWidget {
  const ShopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: SrcinSvgPicture(
          path: AppAssets.logoSvg,
          color: AppColors.primaryColor,
          height: 42,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            spacing: 20,
            children: [
              Hero(
                tag: 'search',
                child: Material(
                  color: Colors.transparent,
                  child: AppTextFormField(
                    onTap: () {
                      pushTo(context, SearchView());
                    },
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search Store',
                  ),
                ),
              ),

              OffersBuilder(),
              BestSellingBuilder(),
              AllProductsBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
