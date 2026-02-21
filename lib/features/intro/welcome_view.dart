import 'package:flutter/material.dart';
import 'package:green_mart/core/constants/app_assets.dart';
import 'package:green_mart/core/functions/nav.dart';
import 'package:green_mart/core/theme/app_colors.dart';
import 'package:green_mart/core/theme/app_text_styles.dart';
import 'package:green_mart/core/widgets/app_button.dart';
import 'package:green_mart/features/auth/views/login_view.dart';
import 'package:svg_flutter/svg.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            AppAssets.welcome,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 60,
            left: 30,
            right: 30,
            child: Column(
              children: [
                SvgPicture.asset(
                  AppAssets.carrotSvg,
                  colorFilter: ColorFilter.mode(
                    AppColors.backgroundColor,
                    BlendMode.srcIn,
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  'Welcome\nto our store',
                  style: AppTextStyles.headline.copyWith(
                    color: AppColors.backgroundColor,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  'Ger your groceries in as fast as one hour',
                  style: AppTextStyles.body.copyWith(
                    color: AppColors.greyColor,
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 2,
                ),
                SizedBox(height: 30),

                AppButton(
                  onPressed: () {
                    pushReplacement(context, LoginScreen());
                  },
                  height: 65,
                  width: double.infinity,
                  textStyle: AppTextStyles.subtitle.copyWith(
                    color: AppColors.backgroundColor,
                  ),
                  text: 'Get Started',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
