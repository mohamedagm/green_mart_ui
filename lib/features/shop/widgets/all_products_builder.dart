import 'package:flutter/material.dart';
import 'package:green_mart/core/theme/app_text_styles.dart';
import 'package:green_mart/features/shop/data/dummy_data.dart';
import 'package:green_mart/features/shop/widgets/item_card.dart';

class AllProductsBuilder extends StatelessWidget {
  const AllProductsBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            Text('All Products', style: AppTextStyles.title),
            Spacer(),
            TextButton(
              onPressed: () {},
              child: Text('See all', style: AppTextStyles.caption),
            ),
          ],
        ),
        GridView.builder(
          itemCount: allProductsList.length,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 10,
            crossAxisCount: 2,
            mainAxisExtent: 250,
          ),
          itemBuilder: (context, index) =>
              ItemCard(productModel: allProductsList[index]),
        ),
      ],
    );
  }
}
