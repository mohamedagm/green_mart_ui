import 'package:flutter/material.dart';
import 'package:green_mart/core/constants/app_assets.dart';
import 'package:green_mart/core/functions/nav.dart';
import 'package:green_mart/core/theme/app_colors.dart';
import 'package:green_mart/core/theme/app_text_styles.dart';
import 'package:green_mart/core/widgets/app_button.dart';
import 'package:green_mart/core/widgets/app_password_form_field.dart';
import 'package:green_mart/core/widgets/app_text_form_field.dart';
import 'package:green_mart/features/auth/views/number_view.dart';
import 'package:svg_flutter/svg.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final _globalKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Form(
            key: _globalKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 80),
                Center(child: SvgPicture.asset(AppAssets.carrotSvg)),
                SizedBox(height: 40),
                Text(
                  "Sign Up",
                  style: AppTextStyles.title.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 12),

                Text(
                  "Enter your credentails to continue",
                  style: AppTextStyles.caption.copyWith(
                    color: AppColors.greyColor,
                  ),
                ),
                SizedBox(height: 45),

                Text(
                  "Name",
                  style: AppTextStyles.caption.copyWith(
                    color: AppColors.greyColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                AppTextFormField(
                  hintText: "Enter your name",
                  keyboardType: TextInputType.name,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "this feild is required";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 12),
                Text(
                  "Email",
                  style: AppTextStyles.caption.copyWith(
                    color: AppColors.greyColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                AppTextFormField(
                  hintText: "Enter your Email",
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "this feild is required";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 12),
                Text(
                  "Password",
                  style: AppTextStyles.caption.copyWith(
                    color: AppColors.greyColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                AppPasswordFormField(
                  hintText: "***********",
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "this feild is required";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 30),
                AppButton(
                  onPressed: () {
                    if (_globalKey.currentState!.validate()) {
                      pushTo(context, NumberScreen());
                    }
                  },
                  text: "Sign Up",
                ),
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: AppTextStyles.small.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        minimumSize: Size.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        textStyle: AppTextStyles.small.copyWith(
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      onPressed: () {
                        popFrom(context);
                      },
                      child: Text(
                        " Login",
                        style: AppTextStyles.small.copyWith(
                          fontWeight: FontWeight.w600,
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
