import 'package:flutter/material.dart';
import 'package:green_mart/core/theme/app_text_styles.dart';
import 'package:green_mart/features/shop/data/dummy_data.dart';
import 'package:green_mart/features/shop/widgets/item_card.dart';

class OffersBuilder extends StatelessWidget {
  const OffersBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            Text('Exclusive Offer', style: AppTextStyles.title),
            Spacer(),
            TextButton(
              onPressed: () {},
              child: Text('See all', style: AppTextStyles.caption),
            ),
          ],
        ),
        SizedBox(
          height: 250,
          child: ListView.separated(
            separatorBuilder: (context, index) => SizedBox(width: 12),
            scrollDirection: Axis.horizontal,
            itemCount: offersList.length,
            itemBuilder: (context, index) {
              return ItemCard(productModel: offersList[index]);
            },
          ),
        ),
      ],
    );
  }
}
