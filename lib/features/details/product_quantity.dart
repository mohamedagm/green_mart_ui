import 'package:flutter/material.dart';
import 'package:green_mart/core/theme/app_colors.dart';
import 'package:green_mart/features/shop/data/product_model.dart';

class ProductQuantityAndPrice extends StatelessWidget {
  final ProductModel productModel;
  final int count;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  const ProductQuantityAndPrice({
    super.key,
    required this.productModel,
    required this.count,
    required this.onIncrement,
    required this.onDecrement,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildCounterButton(Icons.remove, onDecrement, right: 10),

        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: AppColors.primaryColor),
          ),
          width: 45,
          height: 45,
          alignment: Alignment.center,
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              "$count",
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ),

        _buildCounterButton(
          Icons.add,
          onIncrement,
          left: 10,
          color: AppColors.primaryColor,
        ),

        const Spacer(),

        Text(
          '\$${(productModel.price * count).toStringAsFixed(2)}',
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }

  Widget _buildCounterButton(
    IconData icon,
    VoidCallback onTap, {
    double right = 0,
    double left = 0,
    Color color = Colors.grey,
  }) {
    return Padding(
      padding: EdgeInsets.only(right: right, left: left),
      child: IconButton(
        style: IconButton.styleFrom(
          padding: EdgeInsets.zero,
          minimumSize: Size.zero,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
        onPressed: onTap,
        constraints: const BoxConstraints(),
        padding: EdgeInsets.zero,

        icon: Icon(icon, color: color, size: 30),
      ),
    );
  }
}
