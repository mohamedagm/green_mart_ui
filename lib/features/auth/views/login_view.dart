import 'package:flutter/material.dart';
import 'package:green_mart/core/constants/app_assets.dart';
import 'package:green_mart/core/functions/nav.dart';
import 'package:green_mart/core/theme/app_colors.dart';
import 'package:green_mart/core/theme/app_text_styles.dart';
import 'package:green_mart/core/widgets/app_button.dart';
import 'package:green_mart/core/widgets/app_password_form_field.dart';
import 'package:green_mart/core/widgets/app_text_form_field.dart';
import 'package:green_mart/features/auth/views/number_view.dart';
import 'package:green_mart/features/auth/views/register_view.dart';
import 'package:svg_flutter/svg.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _globalKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Form(
              key: _globalKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: SvgPicture.asset(AppAssets.carrotSvg),
                  ),
                  SizedBox(height: 40),
                  Text("Login", style: AppTextStyles.subtitle),
                  SizedBox(height: 16),
                  Text(
                    "Enter your emails and password",
                    style: AppTextStyles.caption.copyWith(
                      color: AppColors.greyColor,
                    ),
                  ),
                  SizedBox(height: 40),
                  Text(
                    "Email",
                    style: AppTextStyles.caption.copyWith(
                      color: AppColors.greyColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 6),
                  AppTextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "this feild is required";
                      }
                      return null;
                    },
                    hintText: "example@example.com",
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 12),
                  Text(
                    "Password",
                    style: AppTextStyles.caption.copyWith(
                      color: AppColors.greyColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 6),
                  AppPasswordFormField(
                    hintText: "************",
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "this feild is required";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 16),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        textStyle: AppTextStyles.small.copyWith(
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      onPressed: () {},
                      child: Text("Forgot Password?"),
                    ),
                  ),
                  SizedBox(height: 40),
                  AppButton(
                    onPressed: () {
                      if (_globalKey.currentState!.validate()) {}
                    },
                    text: "Login",
                  ),
                  SizedBox(height: 18),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account? ",
                        style: AppTextStyles.subtitle.copyWith(fontSize: 12),
                      ),
                      TextButton(
                        onPressed: () {
                          pushTo(context, RegisterView());
                        },
                        child: Text(
                          "Singup",
                          style: AppTextStyles.subtitle.copyWith(
                            fontSize: 12,
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
      ),
    );
  }
}
