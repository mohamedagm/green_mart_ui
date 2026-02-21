import 'package:flutter/material.dart';
import 'package:green_mart/core/functions/nav.dart';
import 'package:green_mart/core/theme/app_colors.dart';
import 'package:green_mart/core/theme/app_text_styles.dart';
import 'package:green_mart/core/widgets/app_button.dart';
import 'package:green_mart/core/widgets/app_text_form_field.dart';
import 'package:green_mart/features/auth/views/vertificaction_view.dart';

class NumberScreen extends StatelessWidget {
  const NumberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: AppColors.backgroundColor),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 100),
            Text(
              "Enter your mobile number",
              style: AppTextStyles.subtitle.copyWith(
                fontWeight: FontWeight.w700,
                color: AppColors.blackColor,
              ),
            ),
            SizedBox(height: 8),
            Text(
              "We need to verify you. We will send you a one time verification code.",
              style: AppTextStyles.caption.copyWith(color: AppColors.greyColor),
            ),
            SizedBox(height: 40),
            AppTextFormField(
              hintText: "01xxxxxxxxxxx",
              keyboardType: TextInputType.phone,
            ),
            SizedBox(height: 40),
            AppButton(
              text: "Next",
              onPressed: () {
                pushTo(context, VertificationView());
              },
            ),
          ],
        ),
      ),
    );
  }
}
