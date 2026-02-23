import 'package:flutter/material.dart';
import 'package:green_mart/core/constants/app_assets.dart';
import 'package:green_mart/core/functions/nav.dart';
import 'package:green_mart/core/theme/app_colors.dart';
import 'package:green_mart/core/theme/app_text_styles.dart';
import 'package:green_mart/core/widgets/app_button.dart';
import 'package:green_mart/features/cart/views/order_accept.dart';
import 'package:green_mart/features/cart/widgets/check_out_row.dart';

class CheckoutBottomSheet extends StatelessWidget {
  final double totalPrice;

  const CheckoutBottomSheet({super.key, required this.totalPrice});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Checkout', style: AppTextStyles.subtitle),
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: const Icon(Icons.close, size: 24),
              ),
            ],
          ),

          const SizedBox(height: 24),
          Divider(color: AppColors.primaryColor, thickness: 1),

          CheckoutRow(
            label: 'Delivery',
            trailing: Text(
              'Select Method',
              style: AppTextStyles.body.copyWith(fontWeight: FontWeight.w600),
            ),
            onTap: () {},
          ),
          const Divider(),
          CheckoutRow(
            label: 'Pament',
            trailing: Image.asset(AppAssets.paymentIcon, width: 24),
            onTap: () {},
          ),
          const Divider(),
          CheckoutRow(
            label: 'Promo Code',
            trailing: Text(
              'Pick discount',
              style: AppTextStyles.body.copyWith(fontWeight: FontWeight.w600),
            ),
            onTap: () {},
          ),
          const Divider(),
          CheckoutRow(
            label: 'Total Cost',
            trailing: Text(
              '\$${totalPrice.toStringAsFixed(2)}',
              style: AppTextStyles.body.copyWith(fontWeight: FontWeight.w600),
            ),
            onTap: () {},
          ),

          Divider(color: AppColors.primaryColor, thickness: 1),
          const SizedBox(height: 16),

          RichText(
            text: TextSpan(
              style: AppTextStyles.small.copyWith(color: Colors.grey),

              children: const [
                TextSpan(text: 'By placing an order you agree to our\n'),
                TextSpan(
                  text: 'Terms',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(text: ' And '),
                TextSpan(
                  text: 'Conditions',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 16),

          AppButton(
            onPressed: () {
              Navigator.pop(context);
              pushTo(context, const OrderAcceptedScreen());
            },
            text: 'Place Order',
            height: 65,
            width: double.infinity,
            bgColor: AppColors.primaryColor,
            textStyle: AppTextStyles.subtitle.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
