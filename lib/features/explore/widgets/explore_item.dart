import 'package:flutter/material.dart';
import 'package:green_mart/core/functions/nav.dart';
import 'package:green_mart/core/theme/app_colors.dart';
import 'package:green_mart/core/theme/app_text_styles.dart';
import 'package:green_mart/features/explore/data/explore_caregory_model.dart';

class ExploreItem extends StatelessWidget {
  const ExploreItem({super.key, required this.exploreCategoryModel});
  final ExploreCategoryModel exploreCategoryModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => pushTo(context, exploreCategoryModel.destination),
      child: Container(
        width: 150,
        margin: EdgeInsets.symmetric(vertical: 8),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 18),
        decoration: BoxDecoration(
          color: exploreCategoryModel.bgColor,

          boxShadow: [
            BoxShadow(
              color: AppColors.blackColor.withValues(alpha: 0.07),
              blurRadius: 10,
              offset: Offset(0, 0),
              spreadRadius: 0,
            ),
          ],
          borderRadius: BorderRadius.circular(16),

          border: Border.all(color: exploreCategoryModel.borderColor),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(child: Image.asset(exploreCategoryModel.imagePath)),

            Text(
              textAlign: TextAlign.center,
              exploreCategoryModel.title,
              style: AppTextStyles.caption.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
