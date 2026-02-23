import 'package:flutter/material.dart';
import 'package:green_mart/core/theme/app_colors.dart';
import 'package:green_mart/core/theme/app_text_styles.dart';
import 'package:green_mart/core/widgets/app_button.dart';
import 'package:green_mart/features/cart/data/cart_model.dart';
import 'package:green_mart/features/cart/data/dummy_data.dart';
import 'package:green_mart/features/cart/widgets/cart_item.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  final List<CartItemModel> _cartItems = mockCartItems;

  double get _totalPrice => _cartItems.fold(
    0,
    (sum, item) => sum + item.productModel.price * item.count,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text('My Cart', style: AppTextStyles.subtitle),
      ),
      body: _cartItems.isEmpty
          ? const Center(child: Text('Your cart is empty'))
          : ListView.separated(
              itemCount: _cartItems.length,
              separatorBuilder: (context, index) => const Divider(
                color: AppColors.primaryColor,
                thickness: 1,
                indent: 20,
                endIndent: 20,
              ),
              itemBuilder: (context, index) => CartItem(
                cartItem: _cartItems[index],
                onIncrement: () => setState(() => _cartItems[index].count++),
                onDecrement: () => setState(() {
                  if (_cartItems[index].count > 1) _cartItems[index].count--;
                }),
                onRemove: () => setState(() => _cartItems.removeAt(index)),
              ),
            ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: AppButton(
          onPressed: () {},
          text: 'Go to Checkout   \$${_totalPrice.toStringAsFixed(2)}',
          height: 65,
          width: double.infinity,
          bgColor: AppColors.primaryColor,
          textStyle: AppTextStyles.subtitle.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
