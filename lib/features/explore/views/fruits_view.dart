import 'package:flutter/material.dart';
import 'package:green_mart/core/constants/app_assets.dart';
import 'package:green_mart/core/functions/nav.dart';
import 'package:green_mart/core/theme/app_text_styles.dart';
import 'package:green_mart/core/widgets/srcin_svg_picture.dart';
import 'package:green_mart/features/shop/data/dummy_data.dart';
import 'package:green_mart/features/shop/widgets/item_card.dart';

class FruitsView extends StatefulWidget {
  const FruitsView({super.key});

  @override
  State<FruitsView> createState() => _FruitsViewState();
}

class _FruitsViewState extends State<FruitsView> {
  String? selectedId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: SrcinSvgPicture(path: AppAssets.filterSvg),
            onPressed: () {},
          ),
        ],
        leading: IconButton(
          onPressed: () => popFrom(context),
          icon: Icon(Icons.arrow_back_ios_new, size: 20),
        ),
        title: Text(
          'Frash Fruits & Vegetable',
          style: AppTextStyles.caption.copyWith(fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),

      body: GridView.builder(
        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 6),
        itemCount: allProductsList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisExtent: 250,
        ),
        itemBuilder: (context, index) {
          final product = allProductsList[index];

          return ItemCard(productModel: product);
        },
      ),
    );
  }
}
