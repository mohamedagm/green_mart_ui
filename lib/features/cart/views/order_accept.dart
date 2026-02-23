import 'package:flutter/material.dart';
import 'package:green_mart/core/functions/nav.dart';
import 'package:green_mart/core/theme/app_colors.dart';
import 'package:green_mart/core/theme/app_text_styles.dart';
import 'package:green_mart/core/widgets/app_button.dart';
import 'package:green_mart/features/main/main_app_view.dart';

class OrderAcceptedScreen extends StatelessWidget {
  const OrderAcceptedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(flex: 2),

            Icon(Icons.check, size: 64),

            const Spacer(),

            Text(
              'Your Order has been accepted',
              textAlign: TextAlign.center,
              style: AppTextStyles.subtitle.copyWith(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Your items has been placed and is on\nit\'s way to being processed',
              textAlign: TextAlign.center,
              style: AppTextStyles.body.copyWith(color: AppColors.greyColor),
            ),
            const SizedBox(height: 40),

            AppButton(
              onPressed: () =>
                  pushAndRemoveUntilAll(context, const MainAppView()),

              text: 'Go To Home',
              height: 65,
              width: double.infinity,
              bgColor: AppColors.primaryColor,
              textStyle: AppTextStyles.subtitle.copyWith(color: Colors.white),
            ),
            const Spacer(flex: 3),
          ],
        ),
      ),
    );
  }
}
