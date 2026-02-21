import 'package:flutter/material.dart';
import 'package:green_mart/core/functions/nav.dart';
import 'package:green_mart/core/theme/app_colors.dart';
import 'package:green_mart/core/theme/app_text_styles.dart';
import 'package:green_mart/core/widgets/app_button.dart';
import 'package:green_mart/features/main/main_app_view.dart';
import 'package:pinput/pinput.dart';

class VertificationView extends StatelessWidget {
  const VertificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: AppColors.backgroundColor),
      body: Padding(
        padding: const EdgeInsets.all(20.0),

        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 1),

              Text(
                "Enter verification code",
                style: AppTextStyles.title.copyWith(
                  fontWeight: FontWeight.w700,
                  color: AppColors.blackColor,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "We have sent SMS to: 01xxxxxxxxx",
                style: AppTextStyles.caption,
              ),
              SizedBox(height: 32),
              Center(
                child: Pinput(keyboardType: TextInputType.number, length: 5),
              ),
              SizedBox(height: 32),
              Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "Resend OTP",
                      style: AppTextStyles.caption.copyWith(
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                  Spacer(),
                  Text(
                    "change phone number",
                    style: AppTextStyles.caption.copyWith(
                      color: AppColors.blackColor,
                    ),
                  ),
                  SizedBox(height: 27),
                ],
              ),
              SizedBox(height: 32),

              AppButton(
                text: "Confirm",
                onPressed: () {
                  pushReplacement(context, MainAppView());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
