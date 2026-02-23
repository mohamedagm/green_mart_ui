import 'package:flutter/material.dart';
import 'package:green_mart/core/theme/app_colors.dart';
import 'package:green_mart/core/theme/app_text_styles.dart';
import 'package:green_mart/features/shop/data/product_model.dart';

class FavouriteItemTile extends StatelessWidget {
  const FavouriteItemTile({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      leading: Image.network(
        productModel.image,
        width: 60,
        height: 60,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) =>
            Icon(Icons.image_not_supported),
      ),
      title: Text(
        productModel.name,
        style: AppTextStyles.body.copyWith(fontWeight: FontWeight.w600),
      ),

      subtitle: Padding(
        padding: const EdgeInsets.only(top: 4),
        child: Text(
          productModel.quantityForPrice,
          style: AppTextStyles.small.copyWith(
            fontWeight: FontWeight.w600,
            color: AppColors.greyColor,
          ),
        ),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '\$${productModel.price}',
            style: AppTextStyles.caption.copyWith(
              fontWeight: FontWeight.w600,
              color: AppColors.blackColor,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8),
            child: Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.black,
              size: 16,
            ),
          ),
        ],
      ),
    );
  }
}
