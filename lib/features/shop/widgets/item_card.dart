import 'package:flutter/material.dart';
import 'package:green_mart/core/functions/nav.dart';
import 'package:green_mart/core/theme/app_colors.dart';
import 'package:green_mart/core/theme/app_text_styles.dart';
import 'package:green_mart/features/details/details_view.dart';
import 'package:green_mart/features/shop/data/product_model.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        pushTo(context, DetailsView(productModel: productModel));
      },
      child: Container(
        width: 160,
        margin: EdgeInsets.symmetric(vertical: 8),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 18),
        decoration: BoxDecoration(
          color: AppColors.backgroundColor,
          boxShadow: [
            BoxShadow(
              color: AppColors.blackColor.withValues(alpha: 0.07),
              blurRadius: 10,
              offset: Offset(0, 0),
              spreadRadius: 0,
            ),
          ],
          borderRadius: BorderRadius.circular(16),

          border: Border.all(color: AppColors.accentColor),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Center(
                child: Hero(
                  tag: productModel.taqId,
                  child: Image.network(productModel.image),
                ),
              ),
            ),
            SizedBox(height: 16),

            Text(
              // 'Bananas',
              productModel.name,
              style: AppTextStyles.body.copyWith(fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 8),
            Text(
              // '7pcs',
              productModel.quantityForPrice,
              style: AppTextStyles.small.copyWith(color: AppColors.greyColor),
            ),
            SizedBox(height: 8),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  // '\$4.99
                  '\$${productModel.price.toStringAsFixed(2)}',
                  style: AppTextStyles.body.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                FloatingActionButton.small(
                  // heroTag: UniqueKey(),
                  heroTag: null,
                  elevation: 0,
                  backgroundColor: AppColors.primaryColor,
                  foregroundColor: AppColors.accentColor,
                  onPressed: () {},
                  child: Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
